#` Import wwf data

import_wwf <- function(){
  mammals <<- readr::read_csv(here::here("data","wildfinder", "wildfinder-mammals_list.csv"))
  ecoregion <<- readr::read_csv(here::here("data","wildfinder", "wildfinder-ecoregions_list.csv"))
  asso <<- readr::read_csv(here::here("data", "wildfinder","wildfinder-ecoregions_species.csv"))
  return(list(mammals,ecoregion,asso))
  }