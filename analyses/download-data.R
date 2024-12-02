# CESAB training 1 
# Download data 


# # Create directory -------
# path_pantheria <- here::here("data", "pantheria")
# path_wildfinder <- here::here("data", "wildfinder")
# dir.create(path_pantheria)
# dir.create(path_wildfinder)
# 
# # Download files -------
# filename_pantheria <- "PanTHERIA_1-0_WR05_Aug2008.txt"
# url_pantheria <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt"
# path_file_pantheria <- paste(path_pantheria,filename_pantheria,sep="/")
# 
# utils::download.file(url_pantheria,
#                      path_file_pantheria,
#                      mode ="wb") 
# 
# filename_wf_mammals <- "wildfinder-mammals_list.csv"
# filename_wf_ecoregion <- "wildfinder-ecoregions_list.csv"
# filename_wf_sp_ecoregion <- "wildfinder-ecoregions_species.csv"
# 
# url_wf_mammals <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-mammals_list.csv"
# url_wf_ecoregion <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_list.csv"
# url_wf_sp_ecoregion <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_species.csv"
# 
# path_file_wf_mammals <- paste(path_wildfinder,filename_wf_mammals,sep="/")
# path_file_wf_ecoregion <- paste(path_wildfinder,filename_wf_ecoregion,sep="/")
# path_file_wf_sp_ecoregion <- paste(path_wildfinder,filename_wf_sp_ecoregion,sep="/")
# 
# utils::download.file(url_wf_mammals,
#                      path_file_wf_mammals,
#                      mode ="wb") 
# utils::download.file(url_wf_ecoregion,
#                      path_file_wf_ecoregion,
#                      mode ="wb") 
# utils::download.file(url_wf_sp_ecoregion,
#                      path_file_wf_sp_ecoregion,
#                      mode ="wb") 



# Doing it with function ------

# usethis::use_r("dl_pantheria_data")
# usethis::use_r("dl_wildlife_data")

# Update the documentation
# roxygen2::roxygenise()
# devtools::document()

# Launch function 
source(here::here("R","dl_pantheria_data.R"))
source(here::here("R","dl_wildlife_data.R"))

dl_pantheria_data()
dl_wildlife_data()



# Ajout des dépendances dans DESCRIPTION ----
# usethis::use_package(package = "here")
# usethis::use_package(package = "utils")

# Ajout d'une dépendance forte ----
# usethis::use_package(package = "ggplot2", type = "Depends")

# Install and load required packages ------
# devtools::install_deps()
# devtools::load_all() # Replace source function

# Ajout d'un makefile ----
# utils::file.edit(here::here("make.R"))
