# ExtractTweetDetails
R script for Extracting URLs Hashtags and Names from Tweets using qdapregex
via: https://github.com/trinker/qdapRegex/blob/master/README.md

1. Takes output of qdapregex library functions: ex_tag(), ex_url(), and ex_has()
2. Flattens the resulting lists
3. Tallies the results using count from library plyr
4. Makes dataframes out of these
