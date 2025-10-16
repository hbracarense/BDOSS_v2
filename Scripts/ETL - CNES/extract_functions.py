import os
import zipfile
import urllib.request
from general_functions import extract_data, create_dir, check_list, correct_year

def extract_cnes(ftp_link, database_link, database, tables, states, years, months, ext, path_dir, path_R, path_export):
    [tables, states, years, months] = [check_list(variable) for variable in [tables, states, years, months]]
    years = correct_year(years)
    create_dir(path_export, database)
    for table in tables:
        create_dir(path_export+database+"/",table)
        for state in states:
            create_dir(path_export+database+"/"+table+"/",state)
            for year in years:
                create_dir(path_export+database+"/"+table+"/"+state+"/",year)
                for month in months:
                    file_name = table + state + year + str(month)
                    file_path = path_export + database + "/" + table + "/" + state + "/" + year + "/" + file_name
                    if os.path.exists(file_path+'.csv'):
                        print('File {name}.csv already exists. Continuing data extraction.'.format(name = file_name))
                        continue
                    else:
                        file_raw_path = file_path + ext
                        link = ftp_link + database + database_link + table + "/" + file_name + ext
                        extract_data(file_name, link, file_path, file_raw_path, ext, path_dir, path_R)
    print('Extraction of {name} ended.'.format(name = database))




