library(shiny)
library(mongolite)
library(tidyverse)
library(data.table)
library(jsonlite)


## insert into database
connection_string= 'up your db link here'
mong <-  mongo(collection="table_name", db="database_name", url=connection_string)

loadData <- function(qry){
  mong <- mongo(collection="table_name", db="database_name", url=connection_string,
                verbose = TRUE)
  
  df <- mong$find(qry)
  return(df)
}




