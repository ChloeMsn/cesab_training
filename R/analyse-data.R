# Load pipes 
library(magrittr)
library(dplyr)
library(ggplot2)

# Load data 
source(here::here("R","import_wwf.R"))
import_wwf()

# Select only Ursidae 
source(here::here("R","select_family.R"))
ursidae <- select_family(mammals,"Ursidae")

# Join tables
source(here::here("R","join_table.R"))
data <- join_table(ursidae,
                   ecoregion, 
                   asso)

# Count ecoregions
source(here::here("R","count_ecoregion.R"))
count <- count_ecoregion(data)

# Plot 
source(here::here("R","plot_ecoregion_species.R"))
p <- plot_ecoregion_species(count)
