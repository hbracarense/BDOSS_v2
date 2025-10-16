import os
import pandas as pd
from general_functions import check_file, check_lower, check_type_sql, check_type_dtypes_json, create_dir

def create_sql(path_file, file_name, df, schema, table, col_name, type_name, comment_col, date_cols):
    check_file(os.path.join(path_file, file_name))
    with open(os.path.join(path_file, file_name), 'w', encoding = 'utf-8') as sql:
        sql.write("DROP TABLE IF EXISTS {schema_name}.{table_name} CASCADE;\nCREATE TABLE {schema_name}.{table_name} (".format(schema_name = schema, table_name = table))
        for i in range(len(df)):
            sql.write('\n\t{column_name} {variable_type} NULL'.format(column_name = check_lower(df.loc[i, col_name]), variable_type = check_type_sql(df.loc[i, type_name], df.loc[i, col_name], date_cols)))
            if i < len(df) - 1:
                sql.write(',')
        sql.write(',\n\tarquivo varchar(50) NULL\n);')
        for i in range(len(df)):
            sql.write("\nCOMMENT ON COLUMN {schema_name}.{table_name}.{column_name} IS '{comment}';".format(schema_name = schema, table_name = table, column_name = check_lower(df.loc[i, col_name]), comment = df.loc[i, comment_col].replace('\r\n', ' ').replace('\n',' ')))
        sql.write("\nCOMMENT ON COLUMN {schema_name}.{table_name}.arquivo IS 'Nome do arquivo fonte dos dados.';".format(schema_name = schema, table_name = table))

def create_json(path_file, file_name, df, col_name, type_name, date_cols):
    check_file(os.path.join(path_file, file_name))
    with open(os.path.join(path_file, file_name), 'w', encoding = 'utf-8') as json:
        json.write('{')
        for i in range(len(df)):
            column = check_lower(df.loc[i, col_name])
            ctype = check_type_dtypes_json(df.loc[i, type_name], df.loc[i, col_name], date_cols)
            last_string = ',\n\t"arquivo": "types.VARCHAR(50)"}'
            json.write('\n\t"{column_name}": "{column_type}"'.format(column_name = column, column_type = ctype))
            if i < len(df) - 1:
                json.write(',')            
        json.write(last_string)

def create_sql_json_files(path_abs, sql_folder, json_folder, tables_folder, path_file_dic, col_name, type_name, comment_col, date_cols):
    create_dir(path_abs, sql_folder)
    create_dir(os.path.join(path_abs, sql_folder), tables_folder)
    create_dir(path_abs, json_folder)
    with pd.ExcelFile(path_file_dic) as dictionary:
        sheets = dictionary.sheet_names
    print('Sheet names imported with success.')
    for sheet in sheets:
        try:
            df =  pd.read_excel(path_file_dic, sheet_name = sheet)
        except Exception as e:
            return print(e)
        table = check_lower(sheet)
        main_dir = sheet
        print('Sheet name {sheet} imported as dataframe with success.'.format(sheet = sheet))
        path_sql = os.path.join(path_abs, sql_folder, tables_folder)
        path_json = os.path.join(path_abs, json_folder)
        table_name = 'tb_{tb_name}'.format(tb_name = table)
        print('Path to files related to table {table} created with success.'.format(table = table_name))
        sql_file = table_name + '.sql'
        json_dtypes_file = table_name + '_dtypes.json'
        create_sql(path_sql, sql_file, df, check_lower(main_dir), table_name, col_name, type_name, comment_col, date_cols)
        print('SQL file {file} created with success.'.format(file = sql_file))
        create_json(path_json, json_dtypes_file, df, col_name, type_name, date_cols)
        print('JSON dtypes file {file} created with success.'.format(file = json_dtypes_file))

def create_schema_sql(path_abs, sql_folder, schema_folder, path_file_dic):
    create_dir(path_abs, sql_folder)
    create_dir(os.path.join(path_abs, sql_folder), schema_folder)
    with pd.ExcelFile(path_file_dic) as dictionary:
        sheets = dictionary.sheet_names
    print('Sheet names imported with success.')
    path_sql = os.path.join(path_abs, sql_folder, schema_folder)
    for sheet in sheets:
        file_name = 'schema_{name}.sql'.format(name = check_lower(sheet))
        check_file(os.path.join(path_sql, file_name))
        with open(os.path.join(path_sql, file_name), 'w', encoding = 'utf-8') as sql:
            sql.write("DROP SCHEMA IF EXISTS {schema_name} CASCADE;\nCREATE SCHEMA {schema_name};".format(schema_name = check_lower(sheet)))
            print("{file_name} created with success.".format(file_name = file_name))