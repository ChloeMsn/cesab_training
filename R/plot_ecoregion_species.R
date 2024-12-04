plot_ecoregion_species <- function(df_count){
  plot <- df_count %>% 
    ggplot(aes(x=sci_name,y=num_ecoregions))+
    geom_col() +
    theme(axis.text.x = element_text(angle = 90)) +
    labs(x="Species",y="Number of ecoregions")
  return(plot)
}
