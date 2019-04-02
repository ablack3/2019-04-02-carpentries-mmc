library(here)
library(dplyr)

gapminder <- readr::read_csv(here("data/gapminder/raw/gapminder_data.csv"))

gapminder %>% 
  group_by(country) %>% 
  summarize(mean_val = mean(lifeExp)) %>% 
  arrange(mean_val)
