import os
import json
import pandas as pd

def save_cnpj(cnpjs, path_folder):
    if cnpjs is None:
        print('No results to export!')
        return None
    df = pd.DataFrame(cnpjs)
    try:
        df.to_csv(path_folder, sep=';', index=False)
    except Exception as e:
        print(e)
    return df



