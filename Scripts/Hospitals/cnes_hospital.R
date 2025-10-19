library(tidyverse)

padroniza_cnes <- function(df, col = "cnes") {
  if (!col %in% names(df)) stop(sprintf("Coluna '%s' não encontrada.", col))
  df[[col]] <- stringr::str_pad(as.character(df[[col]]), width = 7, side = "left", pad = "0")
  df
}

df <- readRDS('C:/Users/hbrac/OneDrive/Documentos/GEESC/OSS/Fase 2/Data/Original data/cnes_final.rds')
cnes <- read.csv2('C:/Users/hbrac/Downloads/cnes_hospitais.csv')
cnes <- padroniza_cnes(cnes)

df <- df %>% filter(CNES %in% cnes$cnes) %>% select(CNES, TP_UNID)

df <- df %>% mutate(
  TP_UNID = case_when(
    TP_UNID == '07'|TP_UNID == '36'|TP_UNID == '20'|TP_UNID == '21' ~ '2',
    .default = '1'
  )
  
)
colnames(df) <- c('cnes', 'tipo_hospital')
write.csv2(df, 'C:/Users/hbrac/Downloads/cnes_hospital.csv', row.names = FALSE)