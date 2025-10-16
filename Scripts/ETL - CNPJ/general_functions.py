import os
import json
from dotenv import load_dotenv
from sqlalchemy import types

def check_list(variable):
    if type(variable) is not list: variable = [variable]
    return variable

def safely_env(key):
    load_dotenv()
    try:
        variable = json.loads(os.environ[key])
    except KeyError:
        variable = []
    except:
        variable = os.environ[key]
    return variable

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

def create_dir(path, folder):
    path_dir = os.path.join(path, folder)
    if not os.path.exists(path_dir): 
        os.makedirs(path_dir)
        print('Folder {name} created with success.'.format(name = folder))
    else:
        print('Folder {name} already existed.'.format(name = folder))

def check_cnpj(cnpj):
    if len(cnpj) != 14:
        raise ValueError('CNPJ must be 14 digits!')
    tam = 12
    nums = cnpj[:tam]
    digs = cnpj[tam:]

    tot = 0
    pos = tam - 7
    for i in range(tam, 0, -1):
        tot = tot + int(nums[tam - i]) * pos
        pos = pos - 1
        if pos < 2:
            pos = 9
    res = 0 if tot % 11 < 2 else 11 - (tot % 11)
    if res != int(digs[0]):
        raise ValueError('Invalid CNPJ')

    tam = tam + 1
    nums = cnpj[:tam]
    tot = 0
    pos = tam - 7
    for i in range(tam, 0, -1):
        tot = tot + int(nums[tam - i]) * pos
        pos = pos - 1
        if pos < 2:
            pos = 9
    res = 0 if tot % 11 < 2 else 11 - (tot % 11)
    if res != int(digs[1]):
        raise ValueError('Invalid CNPJ')

def json_to_dtypes(path_json):
    with open(path_json) as json_file:
        json_dtypes = json.load(json_file)
    for key in json_dtypes:
        json_dtypes[key] = eval(json_dtypes[key])
    return json_dtypes
