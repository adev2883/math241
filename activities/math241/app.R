library(babynames)
library(tidyverse)

names <- c("Adrien", "Michael", "Lenny")

dat_names <- babynames %>%
  group_by(year, name) %>%
  summarize(n = sum(n)) %>%
  group_by(year) %>%
  mutate(prop = n/sum(n)) %>%
  filter(name %in% names, year >= 1980) 

dat_names %>% slice_head(n = 10)

