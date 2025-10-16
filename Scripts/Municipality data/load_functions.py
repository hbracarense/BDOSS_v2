import os
import pandas as pd
import sqlalchemy as db
from general_functions import json_to_dtypes

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

def create_all_tables(engine, path_tables):
    sqls = os.listdir(os.path.join(path_tables))
    for sql in sqls:
        create_command(engine, os.path.join(path_tables), sql)
    print('All tables created with success.')

def read_and_write_df_into_sql(path_abs, path_resources, path_json, json_file_name, path_file, file_data_name, schema, table, engine):
    try:
        df = pd.read_csv(os.path.join(path_file, file_data_name), sep = ';')
    except Exception as e:
        print(e)
        return None
    try:
        dtypes = json_to_dtypes(os.path.join(path_abs, path_resources, path_json, json_file_name))
    except Exception as e:
        print(e)
        return None
    df['arquivo'] = file_data_name
    try:
        df.to_sql(name="tb_" + table, 
                con=engine,
                if_exists='append',
                index=False,
                schema = schema,
                dtype = dtypes
                )
        print('Municipalities data inserted in table with success!')
    except Exception as e:
        print(e)
        return None    