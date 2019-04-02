library(here)
library(dplyr)
library(tidyverse)

gapminder <- readr::read_csv(here("data/gapminder/raw/gapminder_data.csv"))

gapminder %>% 
  group_by(country) %>% 
  summarize(mean_val = mean(lifeExp)) %>% 
  arrange(mean_val)


# Create gap_wide
gap_wide <- gapminder %>%
  gather(key = 'key', value = 'value', c('pop', 'lifeExp', 'gdpPercap')) %>%
  mutate(year_var = paste(key, year, sep = '_')) %>%
  select(country, continent, year_var, value) %>%
  spread(key = 'year_var', value = 'value')


?all.equal
all.equal(mtcars, mtcars[, rev(names(mtcars))])

df <- data_frame(a = 1:3, b = 4:6)
df2 <- df %>% 
  select(b, a)

all.equal(df, df2)
class(df)

all.equal
tibble:::all.equal.tbl_df

?getMethod
getMethod()

?unite

res <- double(100)

res[1] <- 9



