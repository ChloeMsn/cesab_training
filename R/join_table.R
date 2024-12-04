#' Join tables
#'
#' @description
#' `join_table` joins the species, ecoregions and association tables
#' 
#' @returns This function return a dataframe 
#' 
join_table <- function(df_sp,
                       df_ecoregion,
                       df_asso){
  return(dplyr::left_join(df_sp,df_asso,by="species_id") %>% 
    dplyr::left_join(df_ecoregion,by="ecoregion_id")
  )
}