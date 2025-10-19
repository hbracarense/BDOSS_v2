library(read.dbc)
library(tidyverse)

# Variáveis ---------------------------------------------------------------

# básico
ufs <- c("AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO")

# Loop --------------------------------------------------------------------

  base_final <- NULL
  for (uf in ufs) {
        url <- paste0("ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/ST/ST", uf, "2312.dbc")
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
        base_final <- rbind(base_final, tmp)
        rm(tmp)
        file.remove("tmp.dbc")
        print(paste0("Data from UF ", uf, " downloaded with success."))
      }
  saveRDS(base_final, "c:/Users/hbrac/Downloads/cnes_final.rds")


