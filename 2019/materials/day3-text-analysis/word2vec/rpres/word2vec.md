
<style>
.reveal section p {
  color: black;
  font-size: .7em;
  font-family: 'Helvetica'; #this is the font/color of text in slides
}


.section .reveal .state-background {
    background: white;}
.section .reveal h1,
.section .reveal p {
    color: black;
    position: relative;
    top: 4%;}

.wrap-url pre code {
  word-wrap:break-word;
}

</style>


Introduction to Word2Vec
========================================================
author: Chris Bail 
date: Duke University
autosize: true
transition: fade  
  website: https://www.chrisbail.net  
  github: https://github.com/cbail  
  Twitter: https://www.twitter.com/chris_bail

========================================================

# **What is word2vec?**

What is word2vec?
========================================================

<img src="word2vec_simple_vizual.png" height="400" />


What is word2vec?
========================================================
class: wrap-url

Interactive example linked [here](https://anvaka.github.io/pm/#/galaxy/word2vec-wiki?cx=-17&cy=-237&cz=-613&lx=-0.0575&ly=-0.9661&lz=-0.2401&lw=-0.0756&ml=300&s=1.75&l=1&v=d50_clean_small)



The Context Window
========================================================
class: wrap-url


<img src="context_window.png" height="400" />

The Context Window
========================================================

<img src="matrix_context.png" height="400" />


Two tools with word2vec
========================================================
&nbsp;
 
Continuous Bag of words predicts focus word based on context words. Skip-gram model predicts context words based on focus word

<img src="skip_gram_mikolov.png" height="400" />


word2vec in Tidytext
========================================================
class: wrap-url
&nbsp;
Let's load our tweets from elected officials and follow along with some code from Julia Silge:


```r
library(tidytext)
library(dplyr)
load(url("https://cbail.github.io/Elected_Official_Tweets.Rdata"))
# We want to use original tweets, not retweets:
elected_no_retweets <- elected_official_tweets %>%
  filter(is_retweet == F) %>%
  select(c("text"))
#create tweet id
elected_no_retweets$postID<-row.names(elected_no_retweets)
```

Calculate Unigram Probabilities
========================================================
&nbsp;


```r
unigram_probs <- elected_no_retweets %>%
    unnest_tokens(word, text) %>%
    count(word, sort = TRUE) %>%
    mutate(p = n / sum(n))
```

word2vec in Tidytext
========================================================
&nbsp;


```r
unigram_probs
```

```
# A tibble: 23,761 x 3
   word      n       p
   <chr> <int>   <dbl>
 1 the   11864 0.0434 
 2 to    10546 0.0386 
 3 t.co   6498 0.0238 
 4 https  6422 0.0235 
 5 and    5968 0.0218 
 6 of     5315 0.0194 
 7 in     4443 0.0163 
 8 a      4242 0.0155 
 9 for    3580 0.0131 
10 on     2466 0.00902
# ... with 23,751 more rows
```


Skipgram probabilities
========================================================


```r
library(tidyverse)
library(widyr)
tidy_skipgrams <- elected_no_retweets %>%
    unnest_tokens(ngram, text, token = "ngrams", n = 8) %>%
    mutate(ngramID = row_number()) %>% 
    unite(skipgramID, postID, ngramID) %>%
    unnest_tokens(word, ngram)
```

Skipgram probabilities
========================================================


```r
tidy_skipgrams
```

```
# A tibble: 1,728,723 x 2
   skipgramID word       
   <chr>      <chr>      
 1 1_1        mortally   
 2 1_1        wounded    
 3 1_1        ari        
 4 1_1        fuld       
 5 1_1        heroically 
 6 1_1        pursued    
 7 1_1        the        
 8 1_1        palestinian
 9 1_2        wounded    
10 1_2        ari        
# ... with 1,728,713 more rows
```

Skipgram probabilities
========================================================


```r
skipgram_probs <- tidy_skipgrams %>%
    pairwise_count(word, skipgramID, diag = TRUE, sort = TRUE) %>%
    mutate(p = n / sum(n))
```


Normalized probabilities
========================================================


```r
normalized_prob <- skipgram_probs %>%
    filter(n > 20) %>%
    rename(word1 = item1, word2 = item2) %>%
    left_join(unigram_probs %>%
                  select(word1 = word, p1 = p),
              by = "word1") %>%
    left_join(unigram_probs %>%
                  select(word2 = word, p2 = p),
              by = "word2") %>%
    mutate(p_together = p / p1 / p2)
```

What words are most closely associated with "Trump"?
========================================================
&nbsp;


```r
normalized_prob %>% 
    filter(word1 == "trump") %>%
    arrange(-p_together)
```

```
# A tibble: 118 x 7
   word1 word2                n          p      p1        p2 p_together
   <chr> <chr>            <dbl>      <dbl>   <dbl>     <dbl>      <dbl>
 1 trump trump             2350 0.000176   0.00149 0.00149         79.8
 2 trump donald              58 0.00000434 0.00149 0.0000476       61.5
 3 trump admin’s             55 0.00000412 0.00149 0.0000549       50.5
 4 trump admin              169 0.0000127  0.00149 0.000198        43.1
 5 trump administration's    64 0.00000479 0.00149 0.0000768       42.0
 6 trump pres                65 0.00000487 0.00149 0.0000914       35.8
 7 trump administration     537 0.0000402  0.00149 0.000775        34.9
 8 trump administration’s   170 0.0000127  0.00149 0.000285        30.0
 9 trump promised            25 0.00000187 0.00149 0.0000512       24.6
10 trump sabotage            30 0.00000225 0.00149 0.0000622       24.3
# ... with 108 more rows
```


Matrix Factorization 
========================================================
&nbsp;


```r
pmi_matrix <- normalized_prob %>%
    mutate(pmi = log10(p_together)) %>%
    cast_sparse(word1, word2, pmi)
```

Reduce Dimensionality
========================================================
&nbsp;


```r
library(irlba)
#remove missing data
pmi_matrix@x[is.na(pmi_matrix@x)] <- 0
#next we run SVD
pmi_svd <- irlba(pmi_matrix, 256, maxit = 500)
#next we output the word vectors:
word_vectors <- pmi_svd$u
rownames(word_vectors) <- rownames(pmi_matrix)
```

Silge's Function to find Synonyms
========================================================
&nbsp;


```r
library(broom)

search_synonyms <- function(word_vectors, selected_vector) {
    
    similarities <- word_vectors %*% selected_vector %>%
        tidy() %>%
        as_tibble() %>%
        rename(token = .rownames,
               similarity = unrowname.x.)
    
    similarities %>%
        arrange(-similarity)    
}
```

Top words associated with "GOP"
========================================================
&nbsp;


```r
gop <- search_synonyms(word_vectors,word_vectors["gop",])
gop
```

```
# A tibble: 6,019 x 2
   token      similarity
   <chr>           <dbl>
 1 tax            0.0830
 2 trump          0.0333
 3 code           0.0331
 4 regulatory     0.0330
 5 dollars        0.0299
 6 corporate      0.0273
 7 cuts           0.0270
 8 gop            0.0257
 9 sales          0.0249
10 relief         0.0236
# ... with 6,009 more rows
```


Now plot in 2D (SVD) space
========================================================
&nbsp;


```r
library(irlba)
#remove missing data
pmi_matrix@x[is.na(pmi_matrix@x)] <- 0
#next we run SVD with only 2 dimensions
pmi_svd <- irlba(pmi_matrix, 2, maxit = 500)
#next we output the word vectors:
word_vectors <- pmi_svd$u
rownames(word_vectors) <- rownames(pmi_matrix)
```


Plot
========================================================
&nbsp;

```r
#grab first 200 words
forplot<-as.data.frame(word_vectors[1:200,])
forplot$word<-rownames(forplot)
#now plot
library(ggplot2)
ggplot(forplot, aes(x=V1, y=V2, label=word))+
  geom_text(aes(label=word),hjust=0, vjust=0)+
  theme_minimal()
```



Plot
========================================================
&nbsp;
![plot of chunk unnamed-chunk-15](word2vec-figure/unnamed-chunk-15-1.png)


========================================================
# *Deep Learning*

Neural Networks
========================================================
&nbsp;
<img src="brain.png" height="400" />

Neural Networks
========================================================
&nbsp; 

Rather than trying to identify rules for a computer to complete a task, let the computer "learn" from observational data instead.


Perceptrons
========================================================
&nbsp;
<img src="perceptron.png" height="400" />

Layers
========================================================
&nbsp;
<img src="layers.png" height="400" />

Neural Networks
========================================================
&nbsp;
Let's look at this useful [interactive visualization](https://playground.tensorflow.org)


Neural Networks
========================================================
&nbsp;
If you want to learn more about how neural networks work, [this book](http://neuralnetworksanddeeplearning.com) is an excellent resource

========================================================

# **Using the Skip-Gram Model**

Installation
========================================================
&nbsp;
We will be using the library `keras`

`keras` is an API that interfaces with TensorFlow and other popular deep learning tools. Installing this package requires a few more steps than the typical package on CRAN

The following code installs the `keras` package, which comes with a function that will install the TensorFlow dependencies


```r
install.packages("keras")
library(keras)
```

Installation
========================================================
&nbsp;
To finish the installation process, we need to run:


```r
install_keras()
```

Depending on what version of Python you have, this may give you an error. You may need to open your terminal and run the following lines of code:

```
sudo /usr/bin/easy_install pip
sudo /usr/local/bin/pip install --upgrade virtualenv
```

*Note: If you have to run this code in the terminal, copying and pasting both at the same time will give you an error. You need to run them one by one, as the first line will prompt you to enter your computer user's password*

Other packages we need for this example
========================================================
&nbsp;
 (You may need to use `install.packages("package")` on some of these first)

```r
library(reticulate)
library(purrr)
library(text2vec) # note that this is a beta version of the package. code/names of funtions that come from this package may change in future versions
library(dplyr)
library(Rtsne)
library(ggplot2)
library(plotly)
library(stringr)
library(keras)
```


Preprocessing
========================================================
&nbsp;

```r
load(url("https://cbail.github.io/Elected_Official_Tweets.Rdata"))
 
# We want to use original tweets, not retweets:
elected_no_retweets <- elected_official_tweets %>%
  filter(is_retweet == F) %>%
  select(c("screen_name", "text"))

# Many tweets contain URLs, which we don't want considered in the model:
elected_no_retweets$text <- str_replace_all(string = elected_no_retweets$text,
           pattern = "https.+",
           replacement = "")
```

Preprocessing
========================================================
&nbsp;

```r
tokenizer <- text_tokenizer(num_words = 20000)
tokenizer %>% fit_text_tokenizer(elected_no_retweets$text)
```


The Skip-Gram Model
========================================================
&nbsp;
We need to define a function to yield batches of a certain size for model training:

```r
skipgrams_generator <- function(text, tokenizer, window_size, negative_samples) {
  gen <- texts_to_sequences_generator(tokenizer, sample(text))
  function() {
    skip <- generator_next(gen) %>%
      skipgrams(
        vocabulary_size = tokenizer$num_words, 
        window_size = window_size, 
        negative_samples = 1
      )
    x <- transpose(skip$couples) %>% map(. %>% unlist %>% as.matrix(ncol = 1))
    y <- skip$labels %>% as.matrix(ncol = 1)
    list(x, y)
  }
}
```

Defining the Keras Model
========================================================

```r
embedding_size <- 128  # Dimension of the embedding vector.
skip_window <- 5       # How many words to consider left and right.
num_sampled <- 1       # Number of negative examples to sample for each word.

input_target <- layer_input(shape = 1)
input_context <- layer_input(shape = 1)
```

Defining the Embedding Matrix
========================================================
&nbsp;

```r
embedding <- layer_embedding(
  input_dim = tokenizer$num_words + 1, 
  output_dim = embedding_size, 
  input_length = 1, 
  name = "embedding"
)

target_vector <- input_target %>% 
  embedding() %>% 
  layer_flatten()

context_vector <- input_context %>%
  embedding() %>%
  layer_flatten()
```

Keras Model Cont.
========================================================


```r
dot_product <- layer_dot(list(target_vector, context_vector), axes = 1)
output <- layer_dense(dot_product, units = 1, activation = "sigmoid")

model <- keras_model(list(input_target, input_context), output)
model %>% compile(loss = "binary_crossentropy", optimizer = "adam")
summary(model)
```

Model Training
========================================================

You may have to play around with the number of steps and epochs you want to use


```r
model %>%
  fit_generator(
    skipgrams_generator(elected_no_retweets$text, tokenizer, skip_window, negative_samples), 
    steps_per_epoch = 100, epochs = 2
  )
```

Extract the Embeddings
========================================================


```r
embedding_matrix <- get_weights(model)[[1]]

words <- data_frame(
  word = names(tokenizer$word_index), 
  id = as.integer(unlist(tokenizer$word_index))
)

words <- words %>%
  filter(id <= tokenizer$num_words) %>%
  arrange(id)

row.names(embedding_matrix) <- c("UNK", words$word)
```

Explore Embeddings
========================================================


```r
find_similar_words <- function(word, embedding_matrix, n = 5) {
  similarities <- embedding_matrix[word, , drop = FALSE] %>%
    sim2(embedding_matrix, y = ., method = "cosine")
  
  similarities[,1] %>% sort(decreasing = TRUE) %>% head(n)
}

find_similar_words("republican", embedding_matrix)
find_similar_words("democrat", embedding_matrix)
find_similar_words("partisan", embedding_matrix)
```
As you can see, we might need to go back and clean up the text a bit more before tokenizing (getting rid of URLs and pictures)

Visualize Embeddings
========================================================


```r
tsne <- Rtsne(embedding_matrix[2:500,], perplexity = 50, pca = FALSE)

tsne_plot <- tsne$Y %>%
  as.data.frame() %>%
  mutate(word = row.names(embedding_matrix)[2:500]) %>%
  ggplot(aes(x = V1, y = V2, label = word)) + 
  geom_text(size = 3)
tsne_plot
```

Visualize Embeddings
========================================================

<img src="Tweet_embeddings.png" height="400" />

