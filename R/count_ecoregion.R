#' Count ecoregions
#'
#' @description
#' Count the number of ecoregions where each species can be found
#' 
#' @returns This function return a dataframe containing the number of ecoregions where each species can be found

count_ecoregion <- function(df){
  # count number of ecoregions
  df_count <- df %>% 
    dplyr::group_by(species_id,species) %>% 
    dplyr::summarise(num_ecoregions = dplyr::n())
  
  df <- left_join(df,df_count,by=c("species","species_id"))
  # print(colnames(df))
  
  # verify for species that have no ecoregions 
  df$num_ecoregions <- ifelse(is.na(df$ecoregion_id),0,df$num_ecoregions)
  
  return(df %>% 
           distinct(sci_name,num_ecoregions))
}
