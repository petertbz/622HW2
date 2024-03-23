# This code is used to combine the posts and split for hand-coding

library(tidyverse)
library(writexl)

economy1 = read.csv("economy_comments_2024-03-16.csv")
economy2 = read.csv("economy_comments_2024-03-17.csv")
economy3 = read.csv("economy_comments_2024-03-18.csv")
economy4 = read.csv("economy_comments_2024-03-19.csv")
economy5 = read.csv("economy_comments_2024-03-20.csv")
economy6 = read.csv("economy_comments_2024-03-21.csv")
economy7 = read.csv("economy_comments_2024-03-22.csv")
economy8 = read.csv("economy_comments_2024-03-23.csv")

economy = rbind(economy1, economy2, economy3, economy4, economy5, economy6, economy7, economy8) %>% 
  select(-X) %>%
  mutate(label = NA)

4520/3; 4520/3*2
# [1] 1506.667
# [1] 3013.333

part1 = economy[1:1506,]
part2 = economy[1507:3013,]
part3 = economy[3014:4520,]

write_xlsx(part1, "economy_part1.xlsx")
write_xlsx(part2, "economy_part2.xlsx")
write_xlsx(part3, "economy_part3.xlsx")

