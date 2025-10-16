import os
import pandas as pd
import sqlalchemy as db
from general_functions import check_list, check_lower, generate_path_cnes_siasus_sihsus, json_to_dtypes, check_digits_column
from transform_functions import filter_municipality_function, filter_cnes_function, calendar_function, float_function, integer_function, amb_cons_add_col, amb_det_add_col, hosp_det_add_col, filter_det_tables, extract_ids

def create_engine(user, password, host, port, database_name):
    db_url = f"postgresql+psycopg2://{user}:{password}@{host}:{port}/{database_name}"
    engine = db.create_engine(db_url, 
                          isolation_level='AUTOCOMMIT'
                         )
    print('Engine created successfully!')
    return engine

def create_command(engine, path_home, sql_file):
    with open(os.path.join(path_home, sql_file), 'r') as fd:
        sql = fd.read()
    with engine.connect() as connection:
        connection.execute(db.text(sql))
    print(f"{sql_file} created with success!")

def create_all_schemas(engine, path_schemas):
    sqls = os.listdir(path_schemas)
    for sql in sqls:
        create_command(engine, path_schemas, sql)
    print('All schemas created with success.')

def create_all_tables(engine, path_tables, schemas):
    schemas = check_list(schemas)
    for schema in schemas:
        sqls = os.listdir(os.path.join(path_tables, schema))
        for sql in sqls:
            create_command(engine, os.path.join(path_tables, schema), sql)
        print("All tables of schema {schema} created with success.".format(schema = schema))
    print('All tables created with success.')

def read_and_write_df_into_sql(path_exports, path_json, cnes_databases, ufs, years, months, engine, date_columns, integer_columns, float_columns, filter:bool, cnes_filter = None):
    if filter and cnes_filter is None:
        print('Please enter the CNES codes to filter the data!')
        return
    if not filter and cnes_filter is not None:
        print('Please set filter to True if you wish to filter the data!')
        return
    [cnes_databases, ufs, years, months] = [check_list(x) for x in [cnes_databases, ufs, years, months]]
    if cnes_filter is not None:
        cnes_filter = check_list(cnes_filter)
    files_read_dtype = []
    files_read_dtype = files_read_dtype + generate_path_cnes_siasus_sihsus(years, months, ufs, path_exports, path_json, 'CNES', cnes_databases)
  
    for files in files_read_dtype:
        try:
            df = pd.read_csv(files[0],
                             sep = ';',
                             dtype= json_to_dtypes(files[1]),
                             encoding = 'latin1')
            print('File {file} read with success.'.format(file = files[2]))
        except Exception as e:
            print(e)
            continue
        column_names = df.columns.values.tolist()
        if filter:
            df = filter_cnes_function(df, column_names, cnes_filter)
        if len(df.index) > 0:
            date_cols = list(set(column_names) & set(date_columns))
            integer_cols = list(set(column_names) & set(integer_columns))
            float_cols = list(set(column_names) & set(float_columns))
            if len(date_cols) > 0:
                df[date_cols] = df[date_cols].astype(str).applymap(lambda x: None if len(x) < 8 or len(x) > 12 or any(c.isalpha() for c in x) else x).applymap(lambda x: calendar_function(x))
            if len(integer_cols) > 0:
                df[integer_cols] = df[integer_cols].astype(str).applymap(lambda x: integer_function(x)).astype(object).where(pd.notnull(df[integer_cols]), None)
            if len(float_cols) > 0:
                df[float_cols] = df[float_cols].astype(str).applymap(lambda x: float_function(x)).astype(object).where(pd.notnull(df[float_cols]), None)
            lower_case = [check_lower(x) for x in column_names]
            df.columns = lower_case
            df['arquivo'] = files[2]
            df.to_sql(name=files[3], 
                con=engine,
                if_exists='append',
                index=False,
                schema = files[4],
                dtype = json_to_dtypes(files[5])
                )
            print('File {file} inserted into table {table} with success.'.format(file = files[2], table = files[3]))
        else:
            print('No data to load.')
            continue
    print('Process concluded.')    


