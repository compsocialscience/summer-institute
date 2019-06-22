library(googlesheets)
library(dplyr)
library(stringr)

# read in interests from google sheet
SICSS_sheet <- gs_url("https://docs.google.com/spreadsheets/d/1RIeYYvtzEX2kkrXspP2npWBSd9_rRqtw6RywlGvCpsU/edit#gid=565698675") 

# draw out sheet with interests
interests <- gs_read(SICSS_sheet, ws="YOUR SITE") # Replace `YOUR SITE` with name of your site

# subset to relevant rows and columns
interests <- interests %>% 
  magrittr::set_colnames(interests[2,]) %>% 
  select(-c(2,3)) %>% 
  slice(4:nrow(interests)) %>% 
  # turn interest vectors into numeric
  mutate_at(vars(-Name), as.numeric) %>% 
  # replace nas with 0
  replace(is.na(.), 0)

# MAXIMALLY SIMILAR GROUPS
# create distance matrix
interest_mat <- interests %>%
  tibble::column_to_rownames("Name") %>% 
  as.matrix()
dmatrix <- dist(interest_mat, method = "euclidean") 
fit <- hclust(dmatrix, method="ward.D") 
# display dendogram
plot(fit) 
# draw dendogram with cut points for groups 
rect.hclust(fit, k=6, border="red")


# MAXIMALLY DISSIMILAR GROUPS
# identify all unique combinations of participants of size k
all_combs <- caTools::combs(interests$Name, 4)
# calculate mean distance within groups
dissimilar_groups <- as.data.frame(all_combs)
dissimilar_groups$score <- NA
for (i in 1:nrow(all_combs)) {
  temp_group <- interests[interests$Name%in%all_combs[i,],]
  temp_dist <- mean(dist(temp_group[,-1]))
  dissimilar_groups$score[i] <- temp_dist
  print(i)
}


# retain groups with largest distances
dissimilar_groups <- dissimilar_groups %>% 
  arrange(desc(score))



# The `max_diverse` function assigns groups maximizing diversity in preferences

max_diverse <- function(df, k = NA) { # `df` specifies data frame used (just enter `dissimilar groups`), 
                                      # `k` sets a ceiling for number of groups of 4
  
  ### Just to be safe, arrange `df` by descending dissimilarity score
  df <- df %>%
    arrange(desc(score))
  
  ### `all_names` stores every participant name in the SICSS location
  all_names <- unique(c(as.character(df$V1), as.character(df$V2), as.character(df$V3), as.character(df$V4)))
  
  
  # if `k` is set to `NA`, set to k to maximum possible number:
  if (is.na(k)) {
    k = floor(length(all_names)/4)
  }
  
  ### `dgroups` will house each maximally dissimilar group
  dgroups <- df %>%
    slice(1L)
  
  ### `names` stores the names of participants already selected
  names <- c(as.character(dgroups$V1), as.character(dgroups$V2), as.character(dgroups$V3), as.character(dgroups$V4)) 
  
  ### `remaining_names` contains names of all remaining participants
  remaining_names <- all_names[!all_names %in% names]
  
  ### The remainder of the groups are selected through the following loop, which iterates
  ### according to the number of groups you want to form:
  for (i in 1:(k - 1)) {
    
    ### `temp_group` eliminates rows in `df` that feature a participant
    ### who has already been placed into a group
    temp_group <- df %>%
      filter(!(V1 %in% names) &
             !(V2 %in% names) &
             !(V3 %in% names) &
             !(V4 %in% names)) %>%
      slice(1L)
    
    ### `temp_group` is added to `dgroups`
    dgroups <- dgroups %>%
      bind_rows(temp_group)
    
    ### The list of `names` already selected is updated for the next iteration
    ### of the loop
    names <- c(as.character(dgroups$V1), as.character(dgroups$V2), as.character(dgroups$V3), as.character(dgroups$V4)) 
    
    ### `remaining_names` is also updated
    remaining_names <- all_names[!all_names %in% names]
    
  }
  
  ### If we have less than four participants remaining, these participants
  ### are assigned to a final group
  
  if (length(remaining_names) < 4) {

    last_group <- as.data.frame(t(c(remaining_names, rep("", 4-length(remaining_names))))) %>%
      mutate(score = 0)
    
    ### `temp_group` is added to `dgroups`
    dgroups <- dgroups %>%
      bind_rows(last_group)
    
  }
  
  
  ### Remove dissimilarity scores to prepare final `output`
  output <- dgroups %>%
    select(-score)

  ### Rename column variables (why not?)
  colnames(output) <- str_replace(colnames(output), "V", "Member ")
  
  ### Name rows for presentation
  rownames(output) <- paste("Group", 1:nrow(output), sep = " ")
  
  ### We decided to transpose `output` in order to make group assignments more readable
  flip_output <- as.data.frame(t(output))
  
  return(flip_output)
  
}

max_diverse(dissimilar_groups)
