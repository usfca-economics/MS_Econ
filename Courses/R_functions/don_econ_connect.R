don_econ_connect <- function() {
  if (!"RPostgreSQL" %in% installed.packages()) {install.packages("RPostgreSQL")}
  
  library(RPostgreSQL)
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv, dbname="don-econ",
                 host="35.230.7.96",port=5432,user="usfstudent",password="dons")

}
