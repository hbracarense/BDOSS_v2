library(tidyverse)
library(readxl)

#Caminho e arquivo--------------------------------------------------------------
path_abs <- 'C:/Users/x16610962/Downloads/'
file <- 'Consolid_respostas.xlsx'
file_mun <- 'RELATORIO_DTB_BRASIL_MUNICIPIO.xls'
file_export <- 'base_tcu_2025_tratada.xlsx'

#Funções------------------------------------------------------------------------

#Corrige o nome dos municípios para o padrão IBGE
trata_mun <- function(x){
  if(x %in% c('BALSAS', 'CAXIAS', 'COROATÁ', 'BELÉM', 'TERESINA')){
    y <- stringr::str_to_sentence(x)
  } else if(x == 'PRESIDENTE DUTRA'){
    y <- 'Presidente Dutra'
  } else if(x == 'CAMPO MAIOR'){
    y <- 'Campo Maior'
  } else if(x == "Santa Bárbara D'Oeste"){
    y <- "Santa Bárbara d'Oeste"
  } else{
    y <- x
  }
  return(y)
}

#Acrescenta zeros à esquerda em CNES com menos de 7 dígitos
trata_cnes <- function(x){
  if(is.na(x)){
    y <- '9999999'
  } else{
    if(nchar(x)<7){
      y <- x
      while(nchar(y)!=7){
        y <- paste0('0',y)
      }
    } else{
      y <- x
    }
  }
  
  return(y)
}

#Remove espaço no CNPJ
trata_cnpj <- function(x){
  if(is.na(x)){
    y <- '99999999999999'
  } else{
    if(nchar(x)>14){
      y <- substr(x,1,14)
    } else{
      y <- x
    }
  }
  return(y)
}

#Trata o valor numérico
trata_valor <- function(x){
  if(!is.na(x) && x == '142.933.711,06'){
    y <- '142933711.06'
  } else if(!is.na(x) && grepl("15.332.812,68",x)){
    y <- "15332812.68"
  } else if(!is.na(x) && x == "12.794.743,19."){
    y <- "12794743.19"
  } else{
    y <- x
  }
  return(y)
}

#Criação do dataframe-----------------------------------------------------------
df <- read_excel(glue::glue(path_abs,file), col_types = c("text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "date",
                                                          "date",
                                                          "text",
                                                          "text",
                                                          "text",
                                                          "text"))
df_mun <- read_excel(glue::glue(path_abs,file_mun))
#Tratamento do dataframe--------------------------------------------------------

#UF-----------------
df <- df %>% mutate(
  uf = case_when(
    UF == 'AC' ~ '12',
    UF == 'AL' ~ '27',
    UF == 'AM' ~ '13',
    UF == 'AP' ~ '16',
    UF == 'BA' ~ '29',
    UF == 'CE' ~ '23',
    UF == 'DF' ~ '53',
    UF == 'ES' ~ '32',
    UF == 'GO' ~ '52',
    UF == 'MA' ~ '21',
    UF == 'MG' ~ '31',
    UF == 'MS' ~ '50',
    UF == 'MT' ~ '51',
    UF == 'PA' ~ '15',
    UF == 'PB' ~ '25',
    UF == 'PE' ~ '26',
    UF == 'PI' ~ '22',
    UF == 'PR' ~ '41',
    UF == 'RJ' ~ '33',
    UF == 'RN' ~ '24',
    UF == 'RO' ~ '11',
    UF == 'RR' ~ '14',
    UF == 'RS' ~ '43',
    UF == 'SE' ~ '28',
    UF == 'SC' ~ '42',
    UF == 'SP' ~ '35',
    UF == 'TO' ~ '17',
    .default = '99'
  )
)

#Municípios-----------------
df$Município <- unlist(lapply(df$Município, trata_mun))
df <- df %>% left_join(df_mun[,c('Código Município Completo', 'Nome_Município', 'UF')], by = c('Município' = 'Nome_Município', 'uf' = 'UF'))
names(df)[names(df) == 'Código Município Completo'] <- 'municipio'
df$municipio[is.na(df$Município)] <- '9999999'

#Verificação - Municípios com NA-----------------
mun_na <- df[is.na(df$municipio),]

if(nrow(mun_na) == 0){
  print('Todos os municípios possuem código do IBGE.')
} else{
  print('Verifique os nomes dos municípios e tente novamente.')
}

#Exclusão dos dataframes de municípios e verificação
rm(mun_na)
rm(df_mun)


#Nome do estabelecimento-----------------
df$nome_estabelecimento <- toupper(df$`Nome do estabelecimento de saúde`)

#Gestão-----------------
df <- df %>% mutate(
  gestao = case_when(
    Gestão == 'Municipal' ~ '1',
    Gestão == 'Estadual' ~ '2',
    Gestão == 'Dupla' ~ '3',
    .default = '9'
  )
)

#CNES-----------------
df$cnes <- as.character(df$`CNES (apenas números)`)
df$cnes <- unlist(lapply(df$cnes, trata_cnes))

#Tipo do estabelecimento-----------------
df <- df %>% mutate(
  tipo_estabelecimento = case_when(
    `Classificação do Estabelecimento \r\n(Base CNES)` == 'DESATIVADO' ~ '998',
    is.na(df$`Classificação do Estabelecimento \r\n(Base CNES)`) ~ '999',
    TRUE ~ substr(df$`Classificação do Estabelecimento \r\n(Base CNES)`,1,3)
    
  )
)
#Razão Social-----------------
df$razao_social <- toupper(df$`Razão Social`)

#CNPJ-----------------
df$cnpj <- unlist(lapply(df$`CNPJ (apenas numeros)`, trata_cnpj))

#Tipo da entidade-----------------

#Conjunto 1 - Entidades registradas como OS no CNPJ mas não classificadas como OS na base TCU
conjunto1 <- df[(df$`Natureza Jurídica (base CNPJ)`=='ORGANIZACAO SOCIAL (OS)' & df$`Tipo de entidade` != 'Organização Social (OS)'),]

#Conjunto 2 - Entidades não registradas como OS no CNPJ mas classificadas como OS na base TCU
conjunto2 <- df[(df$`Natureza Jurídica (base CNPJ)`!='ORGANIZACAO SOCIAL (OS)' & df$`Tipo de entidade` == 'Organização Social (OS)'),]

df <- df %>% mutate(
  tipo_entidade = case_when(
    `Tipo de entidade` == 'Organização Social (OS)' ~ '1',
    `Tipo de entidade` == 'Organização da Sociedade Civil de Interesse Pùblico (OSCIP)' ~ '2',
    `Tipo de entidade` == 'Organização da Sociedade Civil (OSC)' ~ '3',
    `Tipo de entidade` == 'Fundação privada não enquadrada como OS, OSC ou OSCIP' ~ '4',
    `Tipo de entidade` %in% c('Associação privada', 'associação privada', 'ASSOCIAÇÃO PRIVADA') ~ '5',
    `Tipo de entidade` == 'Associação não enquadrada como OS, OSC ou OSCIP' ~ '6',
    `Tipo de entidade` == 'Serviço Social Autônomo' ~ '7',
    `Tipo de entidade` == 'Sociedade Empresarial' ~ '8',
    .default = '9'
  )
)

#Forma de contrato-----------------
table(df$`Forma de contratação`)
df <- df %>% mutate(
  forma_contratacao = case_when(
    `Forma de contratação` %in% c('Contrato de gestão', 'Contrato de Gestão', 'CONTRATO DE GESTÃO') ~ '1',
    `Forma de contratação` %in% c('Termo de colaboração', 'Termo de Colaboração', 'TERMO DE COLABORAÇÃO') ~ '2',
    `Forma de contratação` %in% c('Termo de fomento', 'TERMO DE FOMENTO') ~ '3',
    `Forma de contratação` %in% c('Concessão administrativa', 'Contrato administrativo') ~ '4',
    `Forma de contratação` == 'Convênio' ~ '5',
    `Forma de contratação` == 'Termo de parceria' ~ '6',
    `Forma de contratação` == 'Outros' ~ '7',
    .default = '9'
  )
)

#Número do contrato-----------------
names(df)[names(df) == 'Número do contrato'] <- 'numero_contrato'

df$numero_contrato[is.na(df$numero_contrato)] <- '99999'

#Início da vigência-----------------
names(df)[names(df) == 'Ínício da vigencia (dia/mês/ano)'] <- 'inicio_vigencia'

#Término da vigência-----------------
names(df)[names(df) == 'Final da vigência (dia/mês/ano)'] <- 'termino_vigencia'

#Valor do contrato-------------------
df$valor_contrato <- as.numeric(unlist(lapply(df$`Vr. total do contrato incluindo aditivos     (R$)`, trata_valor)))

teste1 <- df[is.na(df$`Vr. total do contrato incluindo aditivos     (R$)`),]
teste2 <- df[is.na(df$valor_contrato),]

if(nrow(teste1) == nrow(teste2)){
  print('Todos os valores de contrato foram registrados.')
} else{
  print('Verifique os dados. Há valores de contrato que não foram registrados')
}

rm(teste1)
rm(teste2)

df$valor_contrato[is.na(df$valor_contrato)] <- 999999999
#Recurso federal-------------------
df <- df %>% mutate(
  recurso_federal = case_when(
    `Recurso federal (sim/não)` %in% c('Sim', 'sim', 'SIM', 'Sim (Atualmente não)') ~ '1',
    `Recurso federal (sim/não)` %in% c('Não', 'NÃO', 'não') ~ '0',
    .default = '9'
  )
)
#Recurso estadual-------------------
df <- df %>% mutate(
  recurso_estadual = case_when(
    `Recurso estadual (sim/não)` %in% c('Sim', 'sim', 'SIM') ~ '1',
    `Recurso estadual (sim/não)` %in% c('Não', 'NÃO', 'não') ~ '0',
    .default = '9'
  )
)

#Recurso municipal-------------------
df <- df %>% mutate(
  recurso_municipal = case_when(
    `Recurso municipal (sim/não)` %in% c('Sim', 'SIM', 'sim') ~ '1',
    `Recurso municipal (sim/não)` %in% c('Não', 'não', 'NÃO', 'NÂO') ~ '0',
    .default = '9'
  )
)
#Ano de vigência---------------------
df$ano_vigencia <- as.numeric(format(as.Date(df$inicio_vigencia), "%Y"))

#Origem------------------------------
df <- df %>% mutate(
              fonte = case_when(
                Fonte == 'SMS' ~ '1',
                Fonte == 'SES' ~ '2',
                .default = '9'
              )
                    )

#Tratamento - datas-----------------
df$inicio_vigencia <- as.character(df$inicio_vigencia)
df$termino_vigencia <- as.character(df$termino_vigencia)

#Exclusão das colunas desnecessárias e reordenamento-------------------
df <- df[,!(names(df) %in% c('Fonte', 'UF', 'Município', 'Nome do estabelecimento de saúde', 'Gestão', 'CNES (apenas números)', 'Classificação do estabelecimento de saúde', 'Classificação do Estabelecimento \r\n(Base CNES)', 'Razão Social', 'CNPJ (apenas numeros)', 'CNPJ Raiz (apenas números)', 'Natureza Jurídica (base CNPJ)', 'Tipo de entidade', 'Forma de contratação', 'Objeto contratado                                                                                        (descrever ou copiar do instrumento celebrado)', 'Vr. total do contrato incluindo aditivos     (R$)', 'Recurso federal (sim/não)', 'Recurso estadual (sim/não)', 'Recurso municipal (sim/não)'))]
df <- df[,c('uf', 'municipio', 'cnes','nome_estabelecimento', 'tipo_estabelecimento','gestao','cnpj', 'razao_social', 'tipo_entidade', 'forma_contratacao', 'numero_contrato', 'inicio_vigencia', 'termino_vigencia', 'ano_vigencia','valor_contrato', 'recurso_federal', 'recurso_estadual', 'recurso_municipal', 'fonte')]

#Exportação---------------------------------------------------------------------
xlsx::write.xlsx(as.data.frame(df), glue::glue(path_abs, file_export), sheetName = 'Dados', row.names = FALSE)
