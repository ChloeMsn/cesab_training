#' Download  pantheria data
#'
#' @description
#' `dl_pantheria_data`downloads the file 
#' 
#' @returns This function return the downloaded file path PanTHERIA_1-0_WR05_Aug2008.txt
#' 
dl_pantheria_data <- function(){
  filename_pantheria <- "PanTHERIA_1-0_WR05_Aug2008.txt"
  dir <-  here::here("data", "pantheria")
  dir.create(dir)
  url_pantheria <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria"
  
  url <- paste(url_pantheria,
               filename_pantheria,
               sep="/")
  dest_file <- paste(dir,
                     filename_pantheria,
                     sep="/")
  
  utils::download.file(url,
                       dest_file,
                       mode ="wb") 
  
  return(dest_file)
}