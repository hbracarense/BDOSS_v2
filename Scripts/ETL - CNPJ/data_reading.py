import os
import pandas as pd

def cnpj_data_import(path_abs, path_resources, folder_resources, file_name):
    return pd.read_excel(os.path.join(path_abs, path_resources, folder_resources, file_name), converters={'cnpj':str})['cnpj'].to_list()