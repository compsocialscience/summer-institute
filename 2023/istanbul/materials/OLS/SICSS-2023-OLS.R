# Set working directory
setwd("D:/Users/suuser/Desktop/SCISS2023")

# Create fake dataset
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                 score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))

# View first six rows of dataset
head(df)

#Load ggplot for visualization
library(ggplot2)

# Create scatterplot using ggplot to show the linearity between dependent
# and independent variable
ggplot(df, aes(x=hours, y=score)) +
  geom_point(size=2)

# Create box plot to show outliers
ggplot(df, aes(y=score)) +
  geom_boxplot()

# Fit simple linear regression model
model <- lm(score~hours, data=df)

# View model summary
summary(model)

# Create a scatter plot of the actual data points
plot <- ggplot(df, aes(x = hours, y = score)) +
  geom_point() +
  xlab("Hours") +
  ylab("Score")

# Add the best-fitted line to the plot
plot <- plot + geom_smooth(method = "lm", se = FALSE, color = "pink")

# Display the plot
plot

# Create residual plots to check the assumptions of homoscedasticity and normality

# Define residuals
res <- resid(model)

# Produce residual vs. fitted plot
plot(fitted(model), res)

#add a horizontal line at 0 
abline(0,0)

# Create Q-Q plot for residuals to check normality
qqnorm(res)

#add a straight diagonal line to the plot
qqline(res) 

# Install and load the haven package if you haven't already done so
install.packages("haven")
library(haven)
data <- read_dta("BWGHT.dta")


# Take a look at the data
head(data, 10)


# Create new data frame that contains only the variables we would like to use to
new_data <- data[ , c("bwght", "cigs", "packs", "cigtax", "cigprice", "motheduc")]


# View first six rows of new data frame
head(new_data)


# Create scatterplot
ggplot(new_data, aes(x=cigs, y=bwght)) +
  geom_point(size=2)


# Take a look at the outliers
#create scatter plot
ggplot(new_data, aes(y=bwght)) +
  geom_boxplot()



# Create a scatterplot of every possible pair of variables:
pairs(new_data, pch = 18, col = "pink")



# Install and load the GGally library
install.packages("GGally")
library(GGally)



# Generate the pairs plot
ggpairs(new_data)



# Fit a multiple linear regression model 
model2 <- lm(bwght ~ cigs + packs + cigtax + cigprice + motheduc, data = new_data)
summary(model)

# Create a scatter plot of the actual data points
plot2 <- ggplot(new_data, aes(x = cigs, y = bwght)) +
  geom_point() +
  xlab("Number of cigarettes") +
  ylab("Weight of the newborn")

# Add the best-fitted line to the plot
plot2 <- plot2 + geom_smooth(method = "lm", se = TRUE, color = "purple")

# Display the plot
plot2


# Check whether the distribution of model residuals is approximately normal
hist(residuals(model2), col = "pink")

# Or create Q-Q plot for residuals
# Define residuals
res2 <- resid(model2)
qqnorm(res2)

# Add a straight diagonal line to the plot
qqline(res2) 


# Check for heteroscedasticity
# Create fitted value vs residual plot
plot(fitted(model2), residuals(model2))

# Add horizontal line at 0
abline(h = 0, lty = 2)



