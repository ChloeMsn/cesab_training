library(rcompendium)
library(here)
# library("magrittr") # using pipe %>% 

## Ajout d'un README ----
utils::file.edit(here::here("README.md")) # WARNING : Git can only use .md

## Conversion d'un Rmd en un md ----
rmarkdown::render("README.Rmd")

## Conversion d'un qmd en un md ----
quarto::quarto_render("README.qmd")

## Ajout d'un fichier DESCRIPTION ----
add_description()

## Ajout d'une licence ----
add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

## Ajout d'un script R ----
utils::file.edit(here::here("analyses", "download-data.R"))
