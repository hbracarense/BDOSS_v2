import os
from dotenv import load_dotenv
from general_functions import safely_env

class path_file_config:
    load_dotenv()
    path_folder: str = os.environ['PATH_FOLDER']
    sql_folder: str = os.environ['SQL_FOLDER']
    tables_folder: str = os.environ['TABLES_FOLDER']
    schema_folder: str = os.environ['SCHEMA_FOLDER']
    json_folder: str = os.environ['JSON_FOLDER']
    json_file_name: str = os.environ['JSON_FILE_NAME']
    path_resources: str = os.environ['PATH_RESOURCES']
    path_file: str = os.environ['PATH_FILE']
    path_dic: str = os.environ['PATH_DIC']
    file_name: str = os.environ['FILE_NAME']
    dic_name: str = os.environ['DIC_NAME']
    col_name: str = os.environ['COL_NAME']
    type_name: str = os.environ['TYPE_NAME']
    date_cols = safely_env('DATE_COLS')
    description_name: str = os.environ['DESCRIPTION_NAME']

class sql_config:
    schema: str = os.environ['SCHEMA']
    table: str = os.environ['TABLE']

class credentials_config:
    user = str = os.environ['USER']
    password = str = os.environ['PASSWORD']
    host = str = os.environ['HOST']
    port = str = os.environ['PORT']
    database = str = os.environ['DATABASE']