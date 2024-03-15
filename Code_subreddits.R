library(tidyverse)
library(RedditExtractoR)

# the example in the assignment folder is quite useful and easy to understand.
# I suggest you read it as well

# Step 1: Find subreddits
inflation_subreddits = find_subreddits("inflation")
election_subreddits = find_subreddits("election")

# Step 2: Find threads under the subreddits
election_threads = find_thread_urls(subreddit = election_subreddits$subreddit[2:10], 
                                    period = "day")
inflation_threads = find_thread_urls(subreddit = inflation_subreddits$subreddit[1:5],
                                     period = "day")

# Or, you can use keywords to find threads directly
dog_urls = find_thread_urls(keywords='dog', period='day')
cats_urls = find_thread_urls(subreddit='cats', period = "day")
