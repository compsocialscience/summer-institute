**Additional Resources**

-   [R4DS Chapter 5: Data
    transformation](https://r4ds.had.co.nz/transform.html)
-   [R4DS Chapter 18: Pipes](https://r4ds.had.co.nz/pipes.html)
-   [R4DS Chapter 7: Exploratory data
    analysis](https://r4ds.had.co.nz/exploratory-data-analysis.html)
-   [More dplyr examples](https://rstudio.cloud/learn/primers/2)
-   [More help with tidy](https://rstudio.cloud/learn/primers/4)
-   [R4DS Chapters 9-16](https://r4ds.had.co.nz/wrangle-intro.html)

**Run the code below to load the `congress` dataframe we will use in
this quiz**

``` r
library(tidyverse)
load(url('https://dssoc.github.io/datasets/congress.RData'))
```

## Questions

<br>

**1. Describe what the following tidyverse functions do. Also describe
the pipe operator “%\>%”. You may need to look up the [official
documentation](https://www.rdocumentation.org/) for each of these.**

    filter: 
    select: 
    mutate: 
    count: 
    arrange: 
    gather: 
    pipe operator ("%>%"): 

<br/>

**2. Create a new dataframe that includes only senators and the columns
`gender`, `birthyear`, and `party`. Then use that new dataframe to
compute the number of male and female democrats and republicans (the
output should be five rows corresponding to female democrats, male
democrats, male independents, female republicans, and male
republicans).**

<br/>

**3. Identify the oldest and youngest male and female democrat senators
using tidyverse functions.**

<br/>

**4. Using `mutate`, create a new variable called `age` which represents
the approximate age of each member of congress. How many democratic
senators are over 60 years old?**

Note: you can approximate age using the formula `age = 2021-birthyear`.

<br/>

**5. Create a new column that indicates whether or not the member of
congress is more than 55 years old, and create a single dataframe
showing the number of male and female members of congress that are over
and under 55.**

Note: the dataframe should have four rows: number of females over 55,
number of males over 55, number of females under 55, number of males
under 55.

<br/>

**6. Using `gather`, create a new dataframe where each row corresponds
to a valid twitter, facebook, or youtube social media account, then
compute the total number of accounts for each political party. Then do
the same with `pivot_longer`.**

Note: not every congress member has an account on all three platform, so
be sure to filter.

Note: you may need to look up the documentation for `pivot_longer`.

<br/>

**Below, I define for you two vectors corresponding to policies that US
States have adopted to respond to COVID-19: restrictions on travel
([recorded May 20,
2020](https://www.wsj.com/articles/a-state-by-state-guide-to-coronavirus-lockdowns-11584749351))
and requirements that citizens to wear masks in public ([recorded August
17,
2020](https://www.cnn.com/2020/06/19/us/states-face-mask-coronavirus-trnd/index.html)).**

``` r
travel_restrictions <- c("WA", "OR", "NV", "CA", "NM", "MN", "IL", "OH", "MI", "PA", "VA", "NY", "MA", "VH", "ME", "DE", "MD", "NJ")

require_masks <- c("HI", "WA", "OR", "NV", "CA", "MT", "CO", "NM", "KS", "TX", "MN", "AR", "LA", "WI", "IL", "AL", "MI", "IN", "OH", "KY", "WV", "NC", "VA", "DC", "DE", "PA", "NY", "VT", "NH", "MA", "RI", "CT", "ME")
```

<br/>

**7. write code to print only the states who implemented both travel
restrictions and mask requirements:**

<br/>

**8. Write code to print the states who had implemented mask
requirements but not travel restrictions:**

<br/>

Thanks to Devin Cornell and Taylor Brown for helping to create these
quizzes!
