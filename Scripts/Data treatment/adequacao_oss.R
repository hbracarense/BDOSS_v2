library(tidyverse)
library(readxl)

#Funções---------------------
trata_cnes <- function(x){
  if(nchar(x)<7){
    y <- x
    while(nchar(y)!=7){
      y <- paste0('0',y)
    }
  } else{
    y <- x
  }
  return(y)
}

trata_cnpj <- function(x){
  return(ifelse(nchar(x)>14,substr(x,1,14), x))
}

#Variáveis globais----------------
path_abs <- 'C:/Users/x16610962/Proton Drive/hbracarense/Other computers/DESKTOP-1MJ2BL3/Documentos/GEESC/OSS/Produtos/Plataforma/Plataforma/Versão online'
path_cnes <- 'C:/Users/x16610962/Downloads'
file_name <- 'base_final.xls'
file_cnes <- 'tabela_conferir_contrato(Planilha1).csv'
file_export <- 'base_2022_tratada.xlsx'

#Importação dos arquivos-----------
df <- read_excel(file.path(path_abs, file_name))
df_cnes <- read.csv(file.path(path_cnes, file_cnes), sep = ';')

#Mudança de nome - Município------
names(df)[names(df) == 'CODUFMUN'] <- 'municipio'

#Mudança de nome - Estabelecimento
names(df)[names(df) == 'nome_unidade'] <- 'nome_estabelecimento'

#Tratamento - Razão social--------
df$nome_entidade[is.na(df$nome_entidade)] <- 'SEM NOME REGISTRADO'
names(df)[names(df) == 'nome_entidade'] <- 'razao_social'

#Adeuqação - Gestão--------------
df <- df %>% mutate(
                gestao =case_when(
                  TPGESTAO == 'M' ~ '1',
                  TPGESTAO == 'E' ~ '2',
                  TPGESTAO == 'D' ~ '3',
                  .default = '9'
                )
                    )

#Adequação - Tipo de estabelecimento
df <- df %>% mutate(
              tipo_estabelecimento = case_when(
                estabelecimento == 'CAPS' ~ '017',
                estabelecimento == 'Central de regulacao medica das urgencias'|estabelecimento == 'Central de regulacao' ~ '003',
                estabelecimento == 'Centro de Saúde/UBS'|estabelecimento == 'Posto de Saude' ~ '001',
                estabelecimento == 'Hematoterápica' ~ '010',
                estabelecimento == 'Hospital-dia'|estabelecimento == 'Hospital Geral'|estabelecimento == 'Hospital Especializado' ~ '006',
                estabelecimento == 'Laboratorio de saude publica' ~ '022',
                estabelecimento == 'Pronto Socorro Especializado'|estabelecimento == 'Pronto Antendimento'|estabelecimento == 'Pronto Socorro Geral' ~ '008',
                estabelecimento == 'Unidade de Apoio de Diagnose e terapia' ~ '018',
                estabelecimento == 'Centro de Parto Normal' ~ '007',
                estabelecimento == 'Clinica/ambulatorio especializado'|estabelecimento == 'Policlínica' ~ '016',
                estabelecimento == 'Farmacia' ~ '009',
                estabelecimento == 'Home Care' ~ '012',
                estabelecimento == 'Telesaúde' ~ '011',
                estabelecimento == 'Unidade de vigilancia em saude' ~ '021',
                .default = '997'
                
              )
                    )
#tratamento - CNES------------
df$cnes <- as.character(df$CNES)
df$cnes <- unlist(lapply(df$cnes, trata_cnes))

#Tratamento - CNPJ-------------
df$cnpj <- unlist(lapply(df$CNPJ, function(x) gsub('[./-]','', x)))
df$cnpj <- unlist(lapply(df$cnpj, trata_cnpj))
df$cnpj[is.na(df$cnpj)|!grepl('[0-9]', df$cnpj)] <- '99999999999999'

#Tratamento - Ano de vigência--
names(df)[names(df) == 'ano'] <- 'ano_vigencia'
df$ano_vigencia[is.na(df$ano_vigencia)] <- 9999

#Tratamento - Contrato---------
names(df)[names(df) == 'no_contrato'] <- 'numero_contrato'
df$numero_contrato[is.na(df$numero_contrato)] <-'99999'

#tratamento - Valor anual------
df$valor_anual <- gsub(',', '.', df$valor_anual)
df$valor_anual[is.na(df$valor_anual)] <- 999999999
names(df)[names(df) == 'valor_anual'] <- 'valor_contrato'

#Tratamento - Recurso federal--
df <- df %>% mutate(
  recurso_federal = case_when(
    recurso_federal == 1 ~ '1',
    recurso_federal == 0 ~ '0',
    .default = '9'
  )
)

#Criação de colunas inexistentes
df$tipo_entidade <- '1'
df$forma_contratacao <- '1'
df$inicio_vigencia <- NA
df$termino_vigencia <- NA
df$recurso_estadual <- '9'
df$recurso_municipal <- '9'
df$fonte <- '9'

#Reordenamento das colunas------
df <- df[,c('uf', 'municipio', 'cnes', 'nome_estabelecimento', 'tipo_estabelecimento', 'gestao', 'cnpj', 'razao_social', 'tipo_entidade', 'forma_contratacao', 'numero_contrato', 'inicio_vigencia', 'termino_vigencia', 'ano_vigencia','valor_contrato', 'recurso_federal', 'recurso_estadual', 'recurso_municipal', 'fonte')]

#Filtro dos CNES de mesmo contrato
cnes_remov <- df_cnes %>% filter(mesmo_contrato == 1) %>% pull(CNES)
cnes_remov <- unlist(lapply(cnes_remov, trata_cnes))

#Remoção dos CNES de mesmo contrato
df <- df %>% filter(!(cnes %in% cnes_remov)) 

#Exportação---------------------------------------------------------------------
xlsx::write.xlsx(as.data.frame(df), file.path(path_cnes, file_export), sheetName = 'Dados', row.names = FALSE)
