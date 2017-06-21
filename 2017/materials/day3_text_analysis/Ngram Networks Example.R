#Import names of U.S. elected officials and their Twitter accounts
elected_officials<-read.csv("https://raw.githubusercontent.com/compsocialscience/summer-institute/master/2017/materials/day3_text_analysis/Elected%20Officials.csv",
                            stringsAsFactors = FALSE)



# Get last 100 tweets from all U.S. elected officials
library(twitteR)

#authenticate credentials with Twitter
setup_twitter_oauth(consumer_key="<yourconsumerkey>",consumer_secret="<yourconsumersecret>"
                    , access_token="<youraccesstoken>", access_secret="<youraccessecret>")

#loop through list of elected officials

#create blank data frame to store data
elected_tweets<-as.data.frame(NULL)

for (i in 1:nrow(elected_officials)){
  #get screen name of elected official
  user<-getUser(elected_officials$screen_name[i])
  #get last 100 tweets 
  tweets<-userTimeline(user, n=100)
  #move list to data frame (if user has tweets)
  if(length(tweets)>0){
  tweets<-twListToDF(tweets)
  #paste all tweets together next to name of official
  row<-cbind(elected_officials$screen_name[i],paste(tweets$text, collapse=" "))
  #populate data frame with name of elected official and text of tweets
  elected_tweets<-rbind(elected_tweets, row)
  #pause to avoid rate limiting
  Sys.sleep(1)
  }
  #print iteration of loop for debugging purposes and to 
  #monitor speed of code
  print(i)
}

#save(elected_tweets, file="Elected Official Tweets.Rdata")
load("Elected Official Tweets.Rdata")


#fix column names
names(elected_tweets)<-c("Name","Tweets")

#lemmatize
library(textstem)
elected_tweets$lemmatized_tweets<-sapply(elected_tweets$Tweets, lemmatize_strings)


#part of speech tagging can be done here once Java
#issues addressed by Apple with OpenNLP package


# Convert all words to lowercase
elected_tweets$lemmatized_tweets<-tolower(elected_tweets$lemmatized_tweets)
#remove all numbers
elected_tweets$lemmatized_tweets<-gsub('[[:digit:]]', '', elected_tweets$lemmatized_tweets)
#drop punctuation
elected_tweets$lemmatized_tweets<-gsub("[[:punct:]]"," ", elected_tweets$lemmatized_tweets)


#create adjacency matrix of senators to lemmas
library(splitstackshape)
fornetworks<-cSplit(elected_tweets, "lemmatized_tweets", sep = " ", direction = "long")
# Remove duplicate words
fornetworks$Tweets<-NULL
fornetworks<-unique(fornetworks)
# Drop one word lemmas
# fornetworks$lemmatized_tweets<-as.character(fornetworks$lemmatized_tweets)
# fornetworks<-fornetworks[nchar(fornetworks$lemmatized_tweets>1),]

#Count frequency of lemmas
df2 <- as.data.frame(table(fornetworks$lemmatized_tweets, fornetworks$Name))
# df2$Freq[df2$Freq>1]<-1
#word counts across all orgs
datatab<-data.table(df2)
wordcounts = datatab[,list(A = sum(Freq)), by = c('Var1')]
wordcounts<-as.data.frame(wordcounts)
colnames(wordcounts)[colnames(wordcounts)=="Var1"]<-"lemmatized_tweets"
colnames(wordcounts)[colnames(wordcounts)=="A"]<-"number_of_officials_who_use_word"
wordcounts$inverse_word_frequency<-1/wordcounts$number_of_officials_who_use_word
wordcounts<-wordcounts[,c(1,3)]
fornetworks<-data.table(fornetworks)
formatrix<-merge(fornetworks, wordcounts, by="lemmatized_tweets")
#make adjacency matrix weighted by inverse word frequency
library(reshape2)
m<-acast(formatrix, Name~lemmatized_tweets, sum, margins="inverse_word_frequency")
Arow <- tcrossprod(m)
library(igraph)
ngramnetwork<-graph.adjacency(Arow, mode="undirected", weighted=TRUE, diag=FALSE)
#inspect distribution to choose cut-off point
hist(E(ngramnetwork)$weight)
summary(E(ngramnetwork)$weight)

#drop very weak ties
ngramnetwork <- delete.edges(ngramnetwork, which(E(ngramnetwork)$weight<.4))
V(ngramnetwork)$label.cex<-.5


# visualize
library(GGally) 
library(network)
library(sna)
library(ggplot2)
library(RColorBrewer) # this will allow you to change colors with brewer
library(intergraph) # this allows you to work with the one-mode igraph object


ggnet2(ngramnetwork,  mode = "fruchtermanreingold", size = "degree", 
       node.size = 1, node.color = "black", 
       edge.size = .75, edge.color = "grey")
