# HOW TO WORK WITH APPLICATION PROGRAMMING INTERFACES (APIS)
# Summer Institute in Computational Social Science
# Author: Chris Bail, Duke University (www.chrisbail.net)


# Many sites that prevent you from screen-scraping- which are unfortunately most of the sites you
# might want to scrape- usually offer a powerful alternative: an
# Application Programming Interface (API)

# An API is a type of web infrastructure that enables a developer (you)
# to request large amounts of specific information from a website. The
# Website then creates a new URL that contains the data you request,
# and you scrape it. This has become such an important part of the web
# that most large websites now have APIs (e.g. Google, Twitter, Facebook
# even the New York Times)

# APIs Are called Application Programming Interfaces because may of the people
# who use them are building apps. For example, a music sharing website
# might want to build an app that helps people expose their friends to
# new types of music. But to do this it needs to request permission to
# extract certain types of information about the person from a site
# such as Facebook.

# But Facebook obviously can't give them all the info. Facebook needs to
# make sure that the person wants them to access their data. They also
# need to make sure the app develop can only access certain types of data
# and not all the data that Facebook has.

# To do this, Facebook- and other sites that have APIs- have "authenticat# ion tokens," or "access keys." These are simply codes that you need to # give  when you request data from an API.

# Let's take a look at how the Facebook API works using the "Facebook
# Graph API Explorer. This is a website that lets you see how an
# API works, also known as a "sandbox":

# https://developers.facebook.com/tools/explorer

# try typing "me/friends" into the search bar below the text "FQL Query." # This is a tool that shows you what the results would look like if you #made this API request. 

# what it is actually doing is forming the URL request and then showing  you the JSON-format data that would load if you pasted the URL in your browser.  

# Most sites that have APIs do not have this type of "sandbox." but
# learning how to master working with them is a really nice to skill because
# there are so many APIs out there.

#At present, there are more than 13,000 APIs. You can see a list of them here: http://www.programmableweb.com/category/all/apis?order=field_popularity
# Academics may be interested to know that many data archiving sites now offer
# APIs (such as ProQuest). Many are free to use, but others cost significant
# amounts of money. 

# Most APIs have "rate limits" which determine how many
# requests for information a developer (you) can make within a certain time frame


# In R, you can either interact with an API by forming requests for data within
# a loop and "scraping" the resultant data from URLS "by hand," or you can
# use a variety of user-generated packages to collect data.

# Because we already covered screen scraping, let's look at one of these packages. Let's start with the twitteR package.

install.packages("twitteR")

#The instruction manual for this package is here:
  
# http://cran.r-project.org/web/packages/twitteR/twitteR.pdf

# The first thing you need to do is register as a developer with Twitter.
# in order to do this, you need to visit this page:

# apps.twitter.com 

#Unfortunately, if you don't have a Twitter account, you'll have to make one,
# or follow along on your neighbor's laptop if they don't mind.

#THe next step is to click on "Create New App." You need to name your app, and 
# provide some other credentials. It really does not matter much what you
# put in here, because we are not building an app that other people are going
# to use. I just put in my own website. You can leave the "Callback URL field blank."

# Our goal in doing this is to obtain a Twitter API Key which we need to extract
# Any data from Twitter. TO do this we need to scroll down to the "Application
#Settings section, and then click the blue "manage keys and access token" link
# That is to the right of our Consumer Key

# The next thing we need to do is tell the twitteR package what our secret
#login details are. I can't write mine in here because if this information
# got out a hacker could use it to pose as me, or get data collected by my
# app which I might not want her or him to have.

setup_twitter_oauth(consumer_key="TEXTOFYOURKEYHERE",
                    consumer_secret="TEXTOFYOURSECRETHERE",
                    access_token="TEXTOFACCESSTOKENHERE", 
                    access_secret="TEXTOFACCESSSECRETHERE")


# When we run this last line, it will ask us if we want to use a 
# local file to store these "credentials." I am going to say "no"
# and load these into R each time I need them.

# What this twitteR package is doing for us is simplifying some of
# the complex URL requests we would need to put in each URL call
# we make to the TWitter API. Once all of our authentication
# information is in the system, we have a range of useful commands
# available to us.

#First, we can define a Twitter user whose information we want to scrape
# you can use my name, or feel free to put in your own name
# instead of mine

user <- getUser("chris_bail")

# Let's get a list of my "friends"- by friends, the author of this package is referring
# to the name of the people that I follow on Twitter:

friends<-user$getFriends()

# Now let's get a list of people who follow me on Twitter:
followers<-user$getFollowers()

#We can also get a list of all my favorite Tweets:
favorites<-favorites(user)

#This package also has some nice commands for formatting these
# data as data.frames:

friendsdata <- twListToDF(friends)
followersdata <- twListToDF(followers)

#This the command I would use to get a user's tweets:
tweets<-userTimeline(user)

# I mentioned earlier that Twitter will set shut us
# down if we ask for two much data. this command
# let's me see the limits on what I can do
# within a given time frame:

getCurRateLimitInfo()

# Remember that list of top twitter accounts we got?
# Let's see if we can scrape network data from these folks.
# First, let's remind ourselves what these data look like:

head(twitter_data)

# So what I am going to want to do is create a for loop
# where I make each person the "user" in each iteration
# and scrape the names of the people they follow:

# Create a blank data frame to store data we scrape
twitter_network_data<-as.data.frame(NULL)
# figure out how many rows we have to scrape
z<-nrow(twitter_data)

# start for loop that gets names of people the user
# follows and append them to the dataset we 
# just created. Finally take a break between
# pulling each user's Twitter data in order
# to prevent Twitter rate limiting kicking in:

for(i in 1:z){
  user <- getUser(twitter_data$twitter_handles[i])
  people_user_follows <- user$getFriends()
  people_user_follows<-twListToDF(people_user_follows)
  people_user_follows$name_of_user<-twitter_data$twitter_handles[i]
  twitter_network_data<-rbind(twitter_network_data, people_user_follows)
  Sys.sleep(60)
  print(i)
}

# We don't have time to run this loop together, it will take quite a bit
# of time to run. 


## There are many many more R packages for working with APIS:
## Here are a few: `RgoogleMaps`, `Rfacebook`, `rOpenSci`
##(this one combines many different APIs e.g. the Internet Archive),  
##`WDI`,`rOpenGov`,`rtimes`
##Many more are available but not yet on CRAN (install from 
##github or using devtools)

## There are also APIS that you can use to do analyses, like plotly
# for visualization.

# But there are still APIs that don't have R packages (many of them)

# Let's pretend there was no R package for Google Maps, what would we do?
# first: look for patterns
# https://maps.googleapis.com/maps/api/geocode/json?address=Durham,NorthCarolina&sensor=false
# In this case, address goes between the first** `=` **and the** `&`

findGPS <- function(address,sensor = "false") {
  beginning <- "http://maps.google.com/maps/api/geocode/json?"
  paster <- paste0(beginning,"address=", address, "&sensor=false")
  return(URLencode(paster))
}

findGPS("Durham, North Carolina")

# let's put it all together

page<-findGPS("Durham, North Carolina")
gpscoordinates <- fromJSON(page)
latitude <- gpscoordinates$results[[1]]$geometry$location["lat"]
longitude <- gpscoordinates$results[[1]]$geometry$location["lng"]
gps<-c(latitude, longitude)
gps

# we could then wrap them in a loop.




