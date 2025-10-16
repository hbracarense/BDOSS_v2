import os
from sql_json_creation import create_sql_json_files, create_schema_sql
from config import path_file_config, sql_config, credentials_config
from load_functions import create_engine, create_all_tables, create_all_schemas, read_and_write_df_into_sql



create_sql_json_files(path_abs = os.path.join(path_file_config.path_folder, path_file_config.path_resources),
                      sql_folder = path_file_config.sql_folder,
                      json_folder = path_file_config.json_folder,
                      tables_folder = path_file_config.tables_folder,
                      path_file_dic = os.path.join(path_file_config.path_folder, path_file_config.path_resources, path_file_config.path_dic, path_file_config.dic_name),
                      col_name = path_file_config.col_name,
                       type_name = path_file_config.type_name,
                       comment_col = path_file_config.description_name,
                       table = sql_config.table,
                       schema = sql_config.schema,
                       date_cols = path_file_config.date_cols)

create_schema_sql(path_abs = os.path.join(path_file_config.path_folder, path_file_config.path_resources),
                 sql_folder = path_file_config.sql_folder,
                 schema_folder = path_file_config.schema_folder,
                 schema = sql_config.schema)

engine = create_engine(user = credentials_config.user,
                       password = credentials_config.password,
                       host = credentials_config.host,
                       port = credentials_config.port,
                       database_name = credentials_config.database)

create_all_schemas(engine = engine,
                  path_schemas = os.path.join(path_file_config.path_folder, path_file_config.path_resources, path_file_config.sql_folder, path_file_config.schema_folder))

create_all_tables(engine = engine,
                  path_tables  = os.path.join(path_file_config.path_folder, path_file_config.path_resources, path_file_config.sql_folder, path_file_config.tables_folder))

read_and_write_df_into_sql(path_abs = path_file_config.path_folder,
                           path_resources = path_file_config.path_resources,
                           path_json = path_file_config.json_folder,
                           json_file_name = path_file_config.json_file_name,
                           path_file = path_file_config.path_file,
                           file_data_name = path_file_config.file_name,
                           schema = sql_config.schema,
                           table = sql_config.table,
                           engine = engine)
