library(read.dbc)
library(tidyverse)

#Funções-------------------------------------------------------------------
padroniza_cnes <- function(df, col = "CNES") {
  if (!col %in% names(df)) stop(sprintf("Coluna '%s' não encontrada.", col))
  df[[col]] <- stringr::str_pad(as.character(df[[col]]), width = 7, side = "left", pad = "0")
  df
}
# Variáveis ---------------------------------------------------------------

# básico
ufs <- c("AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO")
months <- c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12")
cnes <- read.csv2('C:/Users/hbrac/OneDrive/Documentos/GEESC/OSS/Fase 2/Data/Transformed data/cnes_hospital.csv')
# Loop --------------------------------------------------------------------

base_final <- NULL
for (uf in ufs) {
  for (month in months){
  
  url <- paste0("ftp://ftp.datasus.gov.br/dissemin/publicos/SIHSUS/200801_/Dados/RD", uf, "23", month, ".dbc")
  counter <- 0
  while(counter < 10) {
    counter <- counter + 1
    try1 <- try(download.file(url, destfile = "tmp.dbc", method = 'curl', quiet = TRUE), silent = TRUE)
    if(class(try1)=='try-error') {
      Sys.sleep(10)
    } else {
      break
    }
  }
  tmp <- read.dbc("tmp.dbc")
  tmp <- padroniza_cnes(tmp)
  tmp <- tmp %>% filter(CNES %in% cnes$cnes)
  base_final <- rbind(base_final, tmp)
  rm(tmp)
  file.remove("tmp.dbc")
  print(paste0("Data from UF ", uf, " in month ", month, " downloaded with success."))
  }
}
saveRDS(base_final, "c:/Users/hbrac/Downloads/sihsus_final.rds")
write.csv2(base_final, "c:/Users/hbrac/Downloads/sihsus_final.csv", row.names = FALSE)
