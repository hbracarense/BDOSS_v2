import os
import json
import zipfile
import urllib.request
from dotenv import load_dotenv
from subprocess import Popen, PIPE
from sqlalchemy import types

def check_lower(text):
    return text.lower() if text.isupper() else text   

def check_file(path_file):
    if os.path.exists(path_file):
        os.remove(path_file)

def check_type_sql(text, colname, date_cols):
    if colname in date_cols or 'date' in text or text == 'timestamp':
        return 'timestamp'
    delimiter = '('
    vartype = check_lower(text.split(delimiter)[0])
    varsize = text.split(delimiter)[1]
    if ' ' in vartype:
        vartype = vartype.replace(' ', '')
    varsize = '('+varsize
    if vartype == 'char':
        vartype = 'varchar'
    if vartype == 'number':
        vartype = 'numeric'
    return vartype+varsize

def check_type_dtypes_json(text, colname, date_cols):
    if colname in date_cols or 'date' in text or text == 'timestamp':
        return 'types.DateTime'
    delimiter = '('
    vartype = check_lower(text.split(delimiter)[0])
    varsize = text.split(delimiter)[1]
    if ' ' in vartype:
        vartype = vartype.replace(' ', '')
    varsize = '('+varsize
    if vartype == 'char' or vartype == 'varchar':
        value = 'types.VARCHAR'+varsize
    if vartype == 'numeric' or vartype == 'number':
        if ',' not in varsize:
            value = 'types.Integer'
        else: 
            value = 'types.Float'
    return value

def check_type_read_json(text, colname, date_cols):
    if colname in date_cols or 'date' in text or text == 'timestamp':
        return 'object'
    delimiter = '('
    vartype = check_lower(text.split(delimiter)[0])
    varsize = text.split(delimiter)[1]
    if ' ' in vartype:
        vartype = vartype.replace(' ', '')
    varsize = '('+varsize
    if vartype == 'char' or vartype == 'varchar':
        value = 'str'
    if vartype == 'numeric' or vartype == 'number':
        if ',' not in varsize:
            value = 'int'
        else: 
            value = 'str'
    return value

def create_dir(path, folder):
    path_dir = os.path.join(path, folder)
    if not os.path.exists(path_dir): 
        os.makedirs(path_dir)
        print('Folder {name} created with success.'.format(name = folder))
    else:
        print('Folder {name} already existed.'.format(name = folder))

#Safely retrieves an environmental variable list
#@param key: a string with key to an env variable
#@return variable: a list or string
def safely_env(key):
    load_dotenv()
    try:
        variable = json.loads(os.environ[key])
    except KeyError:
        variable = []
    except:
        variable = os.environ[key]
    return variable

#Creates a storage to downloaded filed
#@param path: a string containing the absolute path
#@param folder: a string containing the name of the folder
def create_dir(path, folder):
    path_dir = os.path.join(path, folder)
    if not os.path.exists(path_dir): 
        os.makedirs(path_dir)
        print('Folder {name} created with success.'.format(name = folder))
    else:
        print('Folder {name} already existed.'.format(name = folder))

#Checks if a variable is a list
#@param variable: any type of variable
#@return variable: a variable cast to list
def check_list(variable):
    if type(variable) is not list: variable = [variable]
    return variable

def dbc2csv(path_dir, path_R, file_path, file_name):
    try:
        p = Popen([path_R,
                '--vanilla',
                path_dir+'dbc2csv.R',
                file_path],
                cwd = os.getcwd(),
                stdin = PIPE, 
                stdout = PIPE, 
                stderr = PIPE)     
        output, error = p.communicate()

        if p.returncode == 0:
            if os.path.exists(file_path + '.csv'):            
                print('File {name} converted to .csv with success.'.format(name=file_name))            
        else:                
            print('R ERROR:\n {0}'.format(error))
        os.remove(file_path + '.dbc')
    except Exception as e: 
        print("dbc2csv - Error converting file: " + file_name) 
        print(e)

def extract_data(file_name, link, file_path, file_raw_path, ext, path_dir, path_R):
    try:
        print('Download started.')
        urllib.request.urlretrieve(link, file_raw_path)
        print("File {name}{extension} downloaded with success.".format(name = file_name, extension = ext))
        if ext == '.dbc':
            dbc2csv(path_dir, path_R, file_path, file_name) 
    except:
        print('Download of {name}{extension} failed. Try again later.'.format(name = file_name, extension = ext))

def correct_year(years):
    if type(years) is not list:
        years = str(years)[2:]
    else:
        years = [str(year)[2:] for year in years]
    return(years)

def correct_table(database):
    return 'AMB' if database == 'AMBULATORIAL' else 'HOSP'

def json_to_dtypes(path_json):
    with open(path_json) as json_file:
        json_dtypes = json.load(json_file)
    for key in json_dtypes:
        json_dtypes[key] = eval(json_dtypes[key])
    return json_dtypes

def path_json_file_name(database, table, path_json):
    json_file = 'tb_' + check_lower(database) + '_' + check_lower(table) + '_'
    json_dtype = json_file +  'dtypes.json'
    json_read = json_file + 'read.json'
    return path_json + database + '/' + json_dtype, path_json + database + '/' + json_read

def generate_path_cnes_siasus_sihsus(years, months, ufs, path_exports, path_json, database, tables):
    results = []
    years = correct_year(years)
    for table in tables:
        json_dtype, json_read = path_json_file_name(database, table, path_json)
        table_name = 'tb_' + check_lower(database) + '_' + check_lower(table)
        for uf in ufs:
            for year in years:
                path_file_abs = path_exports + database + '/' + table + '/' + uf + '/' + year
                for month in months:
                    if table == 'PA':
                        suffixes = ['a.csv', 'b.csv']
                        for suffix in suffixes:
                            file_name = table + uf + year + str(month) + suffix
                            path_file = path_file_abs + '/' + file_name
                            paths = [path_file, json_read, file_name, table_name, check_lower(database), json_dtype]
                            results.append(paths)
                    else:
                        file_name = table + uf + year + str(month) + '.csv'
                        path_file = path_file_abs + '/' + file_name
                        paths = [path_file, json_read, file_name, table_name, check_lower(database), json_dtype]
                        results.append(paths)
    return results

def ibge_to_sus(cod):
    if type(cod) is not list:
        cod = cod[:-1]
    else:
        cod = [x[:-1] for x in cod]
    return cod

def check_digits_column(df, col_name, munic):
    return munic if len(str(df.loc[0, col_name])) == 7 else ibge_to_sus(munic)