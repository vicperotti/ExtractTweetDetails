#one way...
#https://github.com/trinker/qdapRegex/blob/master/README.md

Note: tw is a dataframe returned from twitteR

library(qdapRegex)

## first combine the built in url + twitter regexes into a function
rm_twitter_n_url <- rm_(pattern=pastex("@rm_twitter_url", "@rm_url"), extract=TRUE)
urls <- rm_twitter_n_url(tw$text)

hashes <- ex_hash(tw$text)
#let's flatten that!
hashesflattened <- unlist(hashes)
hashesflattened <- na.omit(hashesflattened)
library(plyr)
hashesDF <- data.frame(count(hashesflattened))

urlsflattened <- unlist(urls)
urlsflattened <- na.omit(urlsflattened)
urlsDF <- data.frame(count(urlsflattened))

twnames <- ex_tag(tw$text)
twnamesflattened <- unlist(twnames)
twnamesflattened <- na.omit(twnamesflattened)
twnamesDF <-data.frame(count(twnamesflattened))
 