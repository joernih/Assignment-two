# Data transformering med dplyr
ovr_grense <- 300000
ned_grense <- 0

my_data_adj <- my_data  %>% dplyr::filter(income<ovr_grense) %>% 
  dplyr::filter(income>ned_grense) %>%
  dplyr::mutate(income_transf=log(income)) 

# ggplot med transformerte data
ggplot()+
  geom_point(data=my_data_adj, mapping=aes(x = height, y = income_transf, colour=factor(sex)))

# ggplot med opprinnelige data
ggplot()+
  geom_point(data=my_data, mapping=aes(x = height, y = income, colour=factor(sex)))
