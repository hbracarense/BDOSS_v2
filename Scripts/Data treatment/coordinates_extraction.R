#Read .env----------------------------------------------------------------------
readRenviron(file.path(getwd(),"variables.Renviron"))

#Libraries----------------------------------------------------------------------
library(tidyverse)
library(readxl)
library(ggmap)

#GGMap registration-------------------------------------------------------------
ggmap::register_google(key = Sys.getenv("API_KEY"), write = TRUE)

#Read database------------------------------------------------------------------
df <- read_excel(file.path(Sys.getenv("FILE_PATH"), Sys.getenv("FILE_NAME")))

#Data preparation---------------------------------------------------------------
df <- unique(df[,c('cnes','nome_estabelecimento')])

#Adding columns-----------------------------------------------------------------
df$lon <- df$lat <- character(nrow(df))

#Geocoding----------------------------------------------------------------------

for(i in 1:nrow(df)){
  skip_to_next <- FALSE
  
  tryCatch({
    df_temp <- geocode(df$nome_estabelecimento[i])
    
    df$lon[i] <- df_temp$lon
    df$lat[i] <- df_temp$lat
  }, error = function(e){skip_to_next <<- TRUE})
  
  if(skip_to_next){next}
}

#Exporting----------------------------------------------------------------------
write.csv2(df, file.path(Sys.getenv('FILE_PATH'), Sys.getenv('FILE_EXPORT')), row.names = FALSE)