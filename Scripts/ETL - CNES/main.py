import os
import pandas as pd
from sql_json_creation_functions import create_sql_json_files, create_schema_sql
from extract_functions import extract_cnes
from load_functions import create_engine, create_all_schemas, create_all_tables, read_and_write_df_into_sql
from config import path_file_config, database_config, ftp_link_config, credentials_config, filter_config

#create_sql_json_files(path_abs = os.path.join(path_file_config.path_abs, path_file_config.path_resources),
#                     sql_folder = path_file_config.sql_folder,
#                      json_folder = path_file_config.json_folder,
#                      tables_folder = path_file_config.tables_folder,
#                      path_file_dic = os.path.join(path_file_config.path_abs, path_file_config.path_resources, path_file_config.path_dic_cnes),
#                      col_name = path_file_config.col_name,
#                      type_name = path_file_config.type_name,
#                      comment_col = path_file_config.comm_name,
#                      date_cols = path_file_config.date_cols)

#create_schema_sql(path_abs = os.path.join(path_file_config.path_abs, path_file_config.path_resources),
#                 sql_folder = path_file_config.sql_folder,
#                 schema_folder = path_file_config.schemas_folder,
#                 path_file_dic = os.path.join(path_file_config.path_abs, path_file_config.path_resources, path_file_config.path_dic_cnes))

engine = create_engine(user = credentials_config.user,
                       password = credentials_config.password,
                       host = credentials_config.host,
                       port = credentials_config.port,
                       database_name = credentials_config.database)

#create_all_schemas(engine = engine,
#                  path_schemas = os.path.join(path_file_config.path_abs, path_file_config.path_resources, path_file_config.sql_folder, path_file_config.schemas_folder))

create_all_tables(engine = engine,
                  path_tables  = os.path.join(path_file_config.path_abs, path_file_config.path_resources, path_file_config.sql_folder, path_file_config.tables_folder),
                  schemas = database_config.databases)

search_parameters = pd.read_excel(os.path.join(path_file_config.path_file, path_file_config.file_name), converters={'ano_vigencia':str,'mes_vigencia':str})

for i in range(len(search_parameters)):
    extract_cnes(ftp_link = ftp_link_config.ftp_main,
                database_link = ftp_link_config.ftp_cnes,
                database = database_config.cnes,
                tables = database_config.cnes_database,
                states = search_parameters.loc[i, 'uf'],
                years = search_parameters.loc[i, 'ano_vigencia'],
                months = search_parameters.loc[i, 'mes_vigencia'],
                ext = path_file_config.sus_file,
                path_dir = path_file_config.path_abs,
                path_R = path_file_config.rscript,
                path_export = path_file_config.path_exports)

    read_and_write_df_into_sql(path_exports = path_file_config.path_exports,
                            path_json = os.path.join(path_file_config.path_abs, path_file_config.path_resources, path_file_config.json_folder),
                            cnes_databases = database_config.cnes_database,
                            ufs = search_parameters.loc[i, 'uf'],
                            years = search_parameters.loc[i, 'ano_vigencia'],
                            months = search_parameters.loc[i, 'mes_vigencia'],
                            engine = engine,
                            date_columns = path_file_config.date_cols,
                            integer_columns = path_file_config.integer_cols,
                            float_columns = path_file_config.float_cols,
                            filter = True,
                            cnes_filter = eval(search_parameters.loc[i, 'cnes']))