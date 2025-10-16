import os
import pandas as pd
import sqlalchemy as db
from general_functions import check_digits_column

def filter_municipality_function(df, column_names, munic_filter):
    if 'CODUFMUN' in column_names:
        munic = check_digits_column(df, 'CODUFMUN', munic_filter)
        df = df[df.CODUFMUN.astype(str).isin(munic)]
    elif 'MUN_MOV' in column_names and 'MUN_RES' in column_names:
        munic_mov = check_digits_column(df, 'MUN_MOV', munic_filter)
        munic_res = check_digits_column(df, 'MUN_RES', munic_filter)
        df = df[(df.MUN_MOV.astype(str).isin(munic_mov))|(df.MUN_RES.astype(str).isin(munic_res))]
    elif 'MUNIC_MOV' in column_names and 'MUNIC_RES' in column_names:
        munic_mov = check_digits_column(df, 'MUNIC_MOV', munic_filter)
        munic_res = check_digits_column(df, 'MUNIC_RES', munic_filter)
        df = df[(df.MUNIC_MOV.astype(str).isin(munic_mov))|(df.MUNIC_RES.astype(str).isin(munic_res))]
    elif 'SP_M_HOSP' in column_names and 'SP_M_PAC' in column_names:
        munic_mov = check_digits_column(df, 'SP_M_HOSP', munic_filter)
        munic_res = check_digits_column(df, 'SP_M_PAC', munic_filter)
        df = df[(df.SP_M_HOSP.astype(str).isin(munic_mov))|(df.SP_M_PAC.astype(str).isin(munic_res))]
    elif 'PA_UFMUN' in column_names and 'PA_MUNPCN' in column_names:
        munic_mov = check_digits_column(df, 'PA_UFMUN', munic_filter)
        munic_res = check_digits_column(df, 'PA_MUNPCN', munic_filter)
        df = df[(df.PA_UFMUN.astype(str).isin(munic_mov))|(df.PA_MUNPCN.astype(str).isin(munic_res))]
    elif 'AP_UFMUN' in column_names and 'AP_MUNPCN' in column_names:
        munic_mov = check_digits_column(df, 'AP_UFMUN', munic_filter)
        munic_res = check_digits_column(df, 'AP_MUNPCN', munic_filter)
        df = df[(df.AP_UFMUN.astype(str).isin(munic_mov))|(df.AP_MUNPCN.astype(str).isin(munic_res))]
    elif 'UFMUN' in column_names and 'MUNPAC' in column_names:
        munic_mov = check_digits_column(df, 'UFMUN', munic_filter)
        munic_res = check_digits_column(df, 'MUNPAC', munic_filter)
        df = df[(df.UFMUN.astype(str).isin(munic_mov))|(df.MUNPAC.astype(str).isin(munic_res))]                                            
    elif 'CD_MUNICIPIO_PRESTADOR' in column_names and 'CD_MUNICIPIO_BENEFICIARIO' in column_names:
        munic_mov = check_digits_column(df, 'CD_MUNICIPIO_PRESTADOR', munic_filter)
        munic_res = check_digits_column(df, 'CD_MUNICIPIO_BENEFICIARIO', munic_filter)
        df = df[(df.CD_MUNICIPIO_PRESTADOR.astype(str).isin(munic_mov))|(df.CD_MUNICIPIO_BENEFICIARIO.astype(str).isin(munic_res))]
    else:
        pass
    return df

def filter_cnes_function(df, column_names, cnes_filter):
    if 'CNES' in column_names:
        df = df[df.CNES.astype(str).isin(cnes_filter)]
    elif 'AP_CODUNI' in column_names:
        df = df[df.AP_CODUNI.astype(str).isin(cnes_filter)]
    elif 'PA_CODUNI' in column_names:
        df = df[df.PA_CODUNI.astype(str).isin(cnes_filter)]
    elif 'CNES_EXEC' in column_names:
        df = df[df.CNES_EXEC.astype(str).isin(cnes_filter)]
    elif 'SP_CNES' in column_names:
        df = df[df.SP_CNES.astype(str).isin(cnes_filter)]
    else:
        pass
    return df

def calendar_function(val):
    if not pd.isna(val) and val is not None:
        if '/' not in val and '-' not in val:
            year = val[:4]
            month = val[4:-2]
            day = val[-2:]
            val = year + '-' + month + '-' + day
        elif '/' in val:
            val = val.replace('/', '-')
        else:
            pass
    else:
        pass
    return val

def float_function(val):
    if not pd.isna(val) or val is not None:
        return val.replace(',','.') if ',' in val else val

def integer_function(val):
    if not pd.isna(val) or val is not None:
        if ',' in val or '.' in val or '/' in val or "'" in val or '"' in val:
            val = None
        elif any(c.isalpha() for c in val):
            val = None
        else:
            pass
    else:
        pass
    return val

def amb_cons_add_col(df, column_names):
    new_cols = ['regime_atendimento', 'saude_ocupacional']
    if len(list(set(column_names) & set(new_cols))) == 0:
        df[new_cols] = None
        df = df[['id_evento_atencao_saude','id_plano','faixa_etaria','sexo','cd_municipio_beneficiario','porte','cd_modalidade','nm_modalidade','cd_municipio_prestador','uf_prestador','dt_realizacao','cd_carater_atendimento','tipo_atendimento','regime_atendimento','cd_motivo_saida','cbo','tipo_consulta','saude_ocupacional','ind_acidente_doenca','lg_valor_preestabelecido']]
    else:
        pass
    return df

def amb_det_add_col(df, column_names):
    if all(x != 'unidade_medida' for x in column_names):
        df['unidade_medida'] = None
        df = df[['id_evento_atencao_saude', 'uf_prestador', 'dt_realizacao', 'cd_procedimento', 'cd_tabela_referencia', 'qt_item_evento_informado', 'vl_item_evento_informado', 'vl_item_pago_fornecedor', 'unidade_medida', 'ind_pacote', 'ind_tabela_propria']]
    else:
        pass
    return df

def hosp_det_add_col(df, column_names):
    if all(x != 'unidade_medida' for x in column_names):
        df['unidade_medida'] = None
        df = df[['id_evento_atencao_saude', 'uf_prestador', 'tempo_de_permanencia', 'ano_mes_evento', 'cd_procedimento', 'cd_tabela_referencia', 'qt_item_evento_informado', 'vl_item_evento_informado', 'vl_item_pago_fornecedor', 'unidade_medida', 'ind_pacote', 'ind_tabela_propria']]
    else:
        pass
    return df

def extract_ids(engine, path_exports, sql_file, table_name):
    with open(os.path.join(path_exports, sql_file), 'r') as fd:
        sql = fd.read()
    sql = sql.format(**(dict(table_name = table_name)))
    with engine.connect() as connection:
        ids = pd.read_sql(sql=db.text(sql),
                          con = connection)
    return ids

def filter_det_tables(df, ids):
    results = df[df.id_evento_atencao_saude.astype(str).isin(ids.id_evento_atencao_saude)]
    return results
    
    