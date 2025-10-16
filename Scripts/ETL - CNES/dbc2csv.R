if (!require("read.dbc")) devtools::install_github("danicat/read.dbc")
library("read.dbc")


dbc2dbf <- function(path_file) {
  x <- read.dbc(paste(path_file, ".dbc", sep = ""))
  write.csv2(x, file = paste(path_file, ".csv", sep = ""), row.names = FALSE, fileEncoding = 'UTF-8')
}

args <- commandArgs(trailingOnly=TRUE)
try(dbc2dbf(args[1]), TRUE)