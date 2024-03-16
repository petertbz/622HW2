library(tidyverse)
library(RedditExtractoR)

# 1. Economy situation
# 1.1. economy
economy_subreddits = find_subreddits("economy")
economy_threads = find_thread_urls(subreddit = "economy", period = "day")
economy_content = get_thread_content(economy_threads$url[1:nrow(economy_threads)])
economy_comments = economy_content$comments
economy_threads = economy_content$threads

# 1.2. inflation
inflation_subreddits = find_subreddits("inflation")
inflation_threads = find_thread_urls(subreddit = "inflation", period = "day")
inflation_content = get_thread_content(inflation_threads$url[1:nrow(inflation_threads)])
inflation_comments = inflation_content$comments
inflation_threads = inflation_content$threads

# 1.3. business
business_threads = find_thread_urls(subreddit = "business", period = "day")
business_content = get_thread_content(business_threads$url[1:10])
business_comments = business_content$comments
business_threads = business_content$threads

# 1.4. salary
salary_subreddits = find_subreddits("salary")
salary_threads = find_thread_urls(subreddit = "salary", period = "day")
salary_content = get_thread_content(salary_threads$url[1:10])
salary_comments = salary_content$comments
salary_threads = salary_content$threads

# 2. election
# 2.1. Election
election_subreddits = find_subreddits("election")
PresidentialElection_threads = find_thread_urls(subreddit = "PresidentialElection
", period = "day")
PresidentialElection_content = get_thread_content(PresidentialElection_threads$url[1:10])
PresidentialElection_comments = PresidentialElection_content$comments
PresidentialElection_threads = PresidentialElection_content$threads

# 2.2. politics
politics_subreddits = find_subreddits("politics")
politics_threads = find_thread_urls(subreddit = "politics", period = "day")
politics_content = get_thread_content(politics_threads$url[1:10])
politics_comments = politics_content$comments
politics_threads = politics_content$threads

# 2.3. PoliticalDiscussion
PoliticalDiscussion_threads = find_thread_urls(subreddit = "PoliticalDiscussion", period = "day")
PoliticalDiscussion_content = get_thread_content(PoliticalDiscussion_threads$url[1:10])
PoliticalDiscussion_comments = PoliticalDiscussion_content$comments
PoliticalDiscussion_threads = PoliticalDiscussion_content$threads

# 2.4. uspolitics
uspolitics_threads = find_thread_urls(subreddit = "uspolitics", period = "day")
uspolitics_content = get_thread_content(uspolitics_threads$url[1:10])
uspolitics_comments = uspolitics_content$comments
uspolitics_threads = uspolitics_content$threads

# 2.5. AmericanPolitics
AmericanPolitics_threads = find_thread_urls(subreddit = "AmericanPolitics", period = "day")
AmericanPolitics_content = get_thread_content(AmericanPolitics_threads$url[1:10])
AmericanPolitics_comments = AmericanPolitics_content$comments
AmericanPolitics_threads = AmericanPolitics_content$threads

biden = find_subreddits("biden")
trump = find_subreddits("trump")
vote = find_subreddits("vote")
president = find_subreddits("president")

# 2.6. democrats
democrats_threads = find_thread_urls(subreddit = "democrats", period = "day")
democrats_content = get_thread_content(democrats_threads$url[1:10])
democrats_comments = democrats_content$comments
democrats_threads = democrats_content$threads

# 2.7. OurPresident
OurPresident_threads = find_thread_urls(subreddit = "OurPresident", period = "day")
OurPresident_content = get_thread_content(OurPresident_threads$url[1:10])
OurPresident_comments = OurPresident_content$comments
OurPresident_threads = OurPresident_content$threads


presidnet = find_thread_urls(keyword = "president", period = "day")
election = find_thread_urls(keyword = "election", period = "day")

work_subreddits = find_subreddits ("remote")
work_threads = find_thread_urls (period = "day", subreddit = work_subreddits$subreddit[1:85])
