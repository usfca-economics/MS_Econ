don_econ_connect <- function() {
  if (!"RPostgreSQL" %in% installed.packages()) {install.packages("RPostgreSQL")}
  
  library(RPostgreSQL)
  
  # Establish driver
  drv <- dbDriver("PostgreSQL")
  
  # Close existing connections
  lapply(dbListConnections(drv), dbDisconnect)
  
  # Establish connection
  con <- dbConnect(drv, dbname="don-econ",
                 host="35.230.7.96",port=5432,user="usfstudent",password="dons")
  
  # Assign connection object to Global Environment
  assign('con', con, globalenv())
}
