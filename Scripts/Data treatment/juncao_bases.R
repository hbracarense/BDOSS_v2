library(readxl)
library(xlsx)

#Funções-----------------
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

trata_municipio <- function(x){
  return(ifelse(nchar(as.character(x))==7, substr(x,1,6), x))
}

#Variáveis globais-------
path_abs <- 'C:/Users/x16610962/Downloads'
file_2022 <- 'base_2022_tratada.xlsx'
file_2025 <- 'base_tcu_2025_tratada.xlsx'
file_cnes <- 'tabela_conferir_contrato(Planilha1).csv'
file_export <- 'base_unificada.xlsx'

#Importação dos arquivos
df_2022 <- read_excel(file.path(path_abs, file_2022))
df_2025 <- read_excel(file.path(path_abs, file_2025))
df_cnes <- read.csv(file.path(path_abs, file_cnes), sep = ';')

#Filtro dos CNES de mesmo contrato
cnes_remov <- df_cnes %>% filter(mesmo_contrato == 1) %>% pull(CNES)
cnes_remov <- unlist(lapply(cnes_remov, trata_cnes))

#Adiciona coluna - 'Origem'
df_2022$origem <- '0'
df_2025$origem <- unlist(lapply(df_2025$cnes, function(x) if (x %in% cnes_remov) '2' else '1'))

#Mescla as duas bases
df <- data.frame(rbind(df_2022, df_2025))

#Compatibilização da coluna de município
df$municipio <- unlist(lapply(df$municipio, trata_municipio))

#Adequação da coluna fonte
df <- df %>% mutate(
              origem = case_when(
                cnes %in% df_2022$cnes & cnes %in% df_2025$cnes ~ '3',
                TRUE ~ origem
              )
    
                  )

#Exporta o arquivo
xlsx::write.xlsx(as.data.frame(df), file.path(path_abs, file_export), sheetName = 'Dados', row.names = FALSE)