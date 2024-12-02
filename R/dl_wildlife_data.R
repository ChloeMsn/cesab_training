#' Download wildfinder data

dl_wildlife_data <- function(){
  
  filename_wf <- c("wildfinder-mammals_list.csv", 
                   "wildfinder-ecoregions_list.csv",
                   "wildfinder-ecoregions_species.csv")
  dir <- here::here("data", "wildfinder")
  dir.create(dir)
  url_wf <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder"
  
  for(f in filename_wf){
    url <- paste(url_wf,f,sep="/")
    dest_file <- paste(dir,f,sep="/")
    utils::download.file(url,
                         dest_file,
                         mode ="wb") 
  }
  
}