import os
from dotenv import load_dotenv
from general_functions import safely_env

class path_file_config:
    load_dotenv()
    path_abs: str = os.environ['PATH_FOLDER']
    path_exports: str = os.environ['PATH_EXPORTS']
    path_resources: str = os.environ['PATH_RESOURCES']
    path_dic_cnes: str = os.environ['PATH_DIC_CNES']
    path_file: str = os.environ['PATH_FILE']
    file_name: str = os.environ['FILE_NAME']
    sql_folder: str = os.environ['SQL_FOLDER']
    json_folder: str = os.environ['JSON_FOLDER']
    queries_folder: str = os.environ['QUERIES_FOLDER']
    schemas_folder: str = os.environ['SCHEMAS_FOLDER']
    tables_folder: str = os.environ['TABLES_FOLDER']
    rscript: str = os.environ['RSCRIPT_PATH']
    sus_file: str = os.environ['SUS_EXT']
    col_name = os.environ['COL_NAME']
    type_name = os.environ['TYPE_NAME']
    comm_name = os.environ['COMM_NAME']
    date_cols = safely_env('DATE_COLS')
    integer_cols = safely_env('INTEGER_COLS')
    float_cols = safely_env('FLOAT_COLS')

class database_config:
    load_dotenv()
    databases = safely_env('DATABASES')
    cnes: str = os.environ['CNES_MAIN']
    cnes_database = safely_env('CNES_DATABASE')

class ftp_link_config:
    load_dotenv()
    ftp_main: str = os.environ['MAIN_LINK_FTP']
    ftp_cnes: str = os.environ['CNES_LINK']

class filter_config:
    type_config = os.environ['TYPE_FILTER']

class credentials_config:
    user = str = os.environ['USER']
    password = str = os.environ['PASSWORD']
    host = str = os.environ['HOST']
    port = str = os.environ['PORT']
    database = str = os.environ['DATABASE']
