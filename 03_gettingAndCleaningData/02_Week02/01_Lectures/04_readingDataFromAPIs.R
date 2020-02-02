## API = Application programming interface
## use GET requests to request Data

twitter_consumer_key = 'XXX'
twitter_secret_key = 'XXX'

library(httr)
library(jsonlite)
#myapp = oauth_app('twitter', key = twitter_consumer_key, secret = twitter_secret_key)
#sig <- sign_oauth1.0(myapp, token = 'XXX', token_secret = 'XXX')

homeTL <- GET('https://api.twitter.com/1.1/statuses/home_timeline.json', sig)
homeTL

json1 = content(homeTL)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[1,1:4]