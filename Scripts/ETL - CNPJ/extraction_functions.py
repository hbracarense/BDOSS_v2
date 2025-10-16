import requests
import json
import time
from general_functions import check_cnpj

def request_api(url, cnpj, days = None, token = None):
    #check_cnpj(cnpj)
    url = url + cnpj + '/days/' + days if days else url + cnpj
    headers = {"Authorization": "Bearer %s" % token} if token else {}
        
    try:
        response = requests.get(url, headers=headers, timeout=70)
    except:
        return None
    if response.status_code != 200:
        return None
    return json.loads(response.content)

def extract_cnpj(url, cnpjs, days, token):
    cnpj_info = {'cnpj':[],
                 'tipo':[],
                 'abertura':[],
                 'nome':[],
                 'fantasia':[],
                 'natureza_juridica':[],
                 'logradouro':[],
                 'numero':[],
                 'complemento':[],
                 'cep':[],
                 'bairro':[],
                 'municipio':[],
                 'uf':[],
                 'email':[],
                 'telefone':[],
                 'efr':[],
                 'situacao':[],
                 'data_situacao':[],
                 'motivo_situacao':[],
                 'situacao_especial':[],
                 'data_situacao_especial':[],
                 'capital_social':[]}
    if days and not token:
        raise ValueError('For retrospective requests, an API token is needed!')
    if (isinstance(cnpjs, list) and days is not None and not isinstance(days, list)) or (not isinstance(cnpjs, list) and days is not None and isinstance(days, list)):
        print('CNPJs and days must be either both lists or both unitary!')
        return None
    if (isinstance(cnpjs, list) and days is not None and isinstance(days, list))and(len(cnpjs) != len(days)):
        print('CNPJs and days must be the same size!')
        return None
    if(not isinstance(url, str)):
        raise TypeError('URL must be a string!')
    if(token is not None and not isinstance(token, str)):
        raise TypeError('Token must be a string!')
    if not isinstance(cnpjs, list):
        cnpjs = list(cnpjs)

    if days:
        for cnpj, day in zip(cnpjs, days):
            request_result = request_api(url, cnpj, day, token)
            if request_result:
                for key in cnpj_info:
                    try:
                        cnpj_info[key].append(request_result[key])
                    except Exception as e:
                        print(e)
                print('Results of CNPJ {cnpj} retrieved with success!'.format(cnpj = cnpj))
            else:
                print('No results for CNPJ {cnpj}!'.format(cnpj = cnpj))
                continue
            time.sleep(20)
    else:
        for cnpj in cnpjs:
            request_result = request_api(url, cnpj, None, token)
            if request_result:
                for key in cnpj_info:
                    try:
                        cnpj_info[key].append(request_result[key])
                    except Exception as e:
                        print(e)
                print('Results of CNPJ {cnpj} retrieved with success!'.format(cnpj = cnpj))
            else:
                print('No results for CNPJ {cnpj}!'.format(cnpj = cnpj))
                continue
            time.sleep(20)
    
    
    if(len(cnpj_info)>0):
        print('Extraction of CNPJs ended with success.')
    return cnpj_info

