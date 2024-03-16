# This code is used to scrape data from Reddit using the RedditExtractoR package
# The data is then cleaned and saved as a csv file
# The code should be run daily for a week
# questions: people's opinions on the current ecnonomic situation in the US
# polarized opinions: better / worse
# Subreddits: r/economy, r/inflation, r/business, r/salary


# instructions: you don't need to modify any code. Just run all the codes.  
# the code will create separate files to store today's data
# we can run a code to combine them later

# load packages
library(RedditExtractoR)
library(tidyverse)

# set time
RunDate = Sys.Date() %>% substr(1,10)

# 1. extract threads and comments from subreddits
# 1.1. economy
economy_threads = find_thread_urls(subreddit = "economy", period = "day")
economy_content = get_thread_content(economy_threads$url[1:nrow(economy_threads)])
economy_comments = economy_content$comments
economy_threads = economy_content$threads

# 1.2. inflation
inflation_threads = find_thread_urls(subreddit = "inflation", period = "day")
inflation_content = get_thread_content(inflation_threads$url[1:nrow(inflation_threads)])
inflation_comments = inflation_content$comments
inflation_threads = inflation_content$threads

# 1.3. business
business_threads = find_thread_urls(subreddit = "business", period = "day")
business_content = get_thread_content(business_threads$url[1:nrow(business_threads)])
business_comments = business_content$comments
business_threads = business_content$threads

# 1.4. salary
salary_threads = find_thread_urls(subreddit = "salary", period = "day")
salary_content = get_thread_content(salary_threads$url[1:nrow(salary_threads)])
salary_comments = salary_content$comments
salary_threads = salary_content$threads

# 2. store the data separately
# 2.1. economy
write.csv(economy_comments, file = paste0("economy_comments_", RunDate, ".csv"))
write.csv(economy_threads, file = paste0("economy_threads_", RunDate, ".csv"))

# 2.2. inflation
write.csv(inflation_comments, file = paste0("inflation_comments_", RunDate, ".csv"))
write.csv(inflation_threads, file = paste0("inflation_threads_", RunDate, ".csv"))

# 2.3. business
write.csv(business_comments, file = paste0("business_comments_", RunDate, ".csv"))
write.csv(business_threads, file = paste0("business_threads_", RunDate, ".csv"))

# 2.4. salary
write.csv(salary_comments, file = paste0("salary_comments_", RunDate, ".csv"))
write.csv(salary_threads, file = paste0("salary_threads_", RunDate, ".csv"))