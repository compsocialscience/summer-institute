**Additional Resources:**

-   [R for Data Science Chapter 13: Relational
    data](https://r4ds.had.co.nz/relational-data.html)
-   [R for Data Science Chapter 3: Data
    visualization](https://r4ds.had.co.nz/data-visualisation.html)
-   [R for Data Science Chapter 28: Graphics for
    communication](https://r4ds.had.co.nz/graphics-for-communication.html)
-   [R for Data Science Chapter 16: Dates and
    times](https://r4ds.had.co.nz/dates-and-times.html)

**Run the code below to load the `congress` dataframe we will use in
this quiz**

``` r
library(tidyverse)
load(url('https://dssoc.github.io/datasets/congress.RData'))
```

## Questions

<br>

**1. Create a bar plot to show the average ages of democrat and
republican congress members. Now do the same for M and F genders (this
second part should include members of all parties).**

<br/>

**2. Create two bar charts: one that shows the total number of social
media accounts among democrats and republicans (Twitter, Facebook,
YouTube), and one that shows the average number of accounts
per-politician for each party. Which political party has more social
media accounts? Which party has a higher per-politician average?**

Note: there are several ways to accomplish this. You could use `gather`
again and then `group_by` and `summarise` within politician and then
within party, or you could use `mutate` to get counts for each politican
and then average by party. Any other approach is also fine.

<br/>

**3. Use an inner join to combine the columns of the `committees`
dataframe with the columns of `congress`, and create a plot showing the
average number of committees that democrats and republicans belong to.
Next create a plot showing the averages by gender (note: this second
part should include members of other parties as well).**

<br/>

**4. Create a bar plot showing the number of members that belong to the
10 largest congressional committees (i.e. committees with the largest
number of members). The bars should be sorted based on committee
sizes.**

Note: Our standard for visualizations is that each plot should have axis
labels, all labels must be readable, and we should easily be able to
tell what your figure is showing. Failure to do this will result in
point deductions.

<br/>

**5. Create a single bar plot that shows the average age of the
committees with the 5 highest and lowest average ages. The bars should
be sorted based on average committee ages. Which committees have the
highest and lowest average ages?**

<br/>

**6. Create a line graph showing the total number of politician births
in each decade since the 1930’s, with separate lines for senate and
house members (see the `type` column). The labels on your x-axis should
look like “1930’s”, “1940’s”, and so on, and your legend should show
values “Senator” and “Representative” (i.e. not `rep` and `sen`).**

Note: The plotted lines may not be continuous if there were no births in
some decades.

<br/>

**7. Create a bar chart showing the frequency of politician births by
month and another bar chart showing politician births by weekday. The
x-labels should be month names and weekday names, respectively, and
appear in chronological order.**

Note: you can use the `lubridate` package methods to get weekday and
month names.

<br/>

Thanks to Devin Cornell and Taylor Brown for helping to create these
quizzes!
