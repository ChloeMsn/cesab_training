library(targets)
library(tarchetypes)

tar_source() #load functions in R/

list(
  # Make the workflow depends on the raw data file
  # tar_target(name = raw_data_file_mammals,
  #            command = here::here("data","wildfinder", "wildfinder-mammals_list.csv"), 
  #            format = "file"), 
  # 
  # tar_target(name = raw_data_file_ecoregion,
  #            command = here::here("data","wildfinder", "wildfinder-ecoregions_list.csv"), 
  #            format = "file"),
  # 
  # tar_target(name = raw_data_file_asso,
  #            command = here::here("data","wildfinder", "wildfinder-ecoregions_species.csv"), 
  #            format = "file"),
  
  # Read the data and return a data.frame
  tar_target(name = raw_data,
             command = import_wwf()),
  
  # Filter Ursidae species
  tar_target(data, command = select_family(raw_data[[1]],"Ursidae")),
  
  # Merge dataset
  tar_target(merged_data, command = join_table(data,
                                               raw_data[[2]],
                                               raw_data[[3]])), 
  
  # Count ecoregions
  tar_target(count_data,command=count_ecoregion(merged_data)),
  
  # Plot
  tar_target(barplot, command = plot_ecoregion_species(count_data)),
  
  # Render html output
  tarchetypes::tar_quarto(report, "index.qmd")
  )