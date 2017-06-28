source('configuration.R')

library(sparklyr)
library(RSQLite)
library(dplyr)


sc <- spark_connect(master = "local")

order_products__prior <- NULL
order_products__train <- NULL
orders <- NULL
products <- NULL

readInstacart <- function() {
  order_products__prior <<- 
    spark_read_csv(sc, "order_products__prior_tbl", 
                   file.path(DATA_DIR, "order_products__prior.csv"))
  
<<<<<<< HEAD
  order_products__train <<- 
    spark_read_csv(sc, "order_products__train_tbl", 
                   file.path(DATA_DIR, "order_products__train.csv"))
  
  orders <<- spark_read_csv(sc, "orders_tbl", file.path(DATA_DIR, "orders.csv"))
  
  products <<- spark_read_csv(sc, "products_tbl", file.path(DATA_DIR, "products.csv"))
=======
  #order_products__train <<- 
   # spark_read_csv(sc, "order_products__train_tbl", 
    #               file.path(DATA_DIR, "order_products__train.csv"))
  
  orders <<- spark_read_csv(sc, "orders_tbl", file.path(DATA_DIR, "orders.csv"))
  
  #products <<- spark_read_csv(sc, "products_tbl", file.path(DATA_DIR, "products.csv"))
>>>>>>> d83f7dce0d7297ec3a62b36575db71b23423dd86
}


players <- NULL

readFootball <- function() {
  con <- dbConnect(
    SQLite(), 
    dbname=file.path(DATA_DIR, "database.sqlite")
  )
  players <<- tbl_df(dbGetQuery(con,"SELECT * FROM Player"))
  
  dbDisconnect(con)
}



