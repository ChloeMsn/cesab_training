# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
devtools::load_all()
# load packages and our function do not need to be sourced 
# attached packages are not visible in the environment 

## Download data -----
source(here::here("analyses","download-data"))
