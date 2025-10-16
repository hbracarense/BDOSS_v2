import os
from dotenv import load_dotenv
from general_functions import safely_env

class api_config:
    load_dotenv()
    api_key: str = os.environ['API_KEY']

class url_config:
    load_dotenv()
    url:str = os.environ['URL']

class path_file_config:
    load_dotenv()
    path_folder: str = os.environ['PATH_FOLDER']
    sql_folder: str = os.environ['SQL_FOLDER']
    schema_folder: str = os.environ['SCHEMA_FOLDER']
    tables_folder: str = os.environ['TABLES_FOLDER']
    json_folder: str = os.environ['JSON_FOLDER']
    json_file_name: str = os.environ['JSON_FILE_NAME']
    path_resources: str = os.environ['PATH_RESOURCES']
    folder_resources: str = os.environ['FOLDER_RESOURCES']
    path_dic: str = os.environ['PATH_DIC']
    path_exports: str = os.environ['PATH_EXPORTS']
    file_name: str = os.environ['FILE_NAME']
    dic_name: str = os.environ['DIC_NAME']
    file_exports: str = os.environ['FILE_EXPORTS']
    col_name: str = os.environ['COL_NAME']
    type_name: str = os.environ['TYPE_NAME']
    description_name: str = os.environ['DESCRIPTION_NAME']
    date_cols: str = safely_env('DATE_COLS')

class sql_config:
    schema: str = os.environ['SCHEMA']
    table: str = os.environ['TABLE']

class credentials_config:
    user = str = os.environ['USER']
    password = str = os.environ['PASSWORD']
    host = str = os.environ['HOST']
    port = str = os.environ['PORT']
    database = str = os.environ['DATABASE']