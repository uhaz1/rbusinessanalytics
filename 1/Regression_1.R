#large collection of datasets
library(MASS)
#datasets withthe ISLR book
#install.packages("ISLR")
library(ISLR)

names(Boston)

advertising <- read.csv('./data/Advertising.csv')

str(advertising) 

summary(advertising)

lm.fit = lm(sales)

#### correlation analysis
# Grab only numeric columns
num.cols <- sapply(advertising, is.numeric)
# Filter to numeric columns for correlation
cor.data <- cor(advertising[,num.cols])
cor.data

install.packages('corrgram',repos = 'http://cran.us.r-project.org')
#install.packages('corrplot',repos = 'http://cran.us.r-project.org')
#install.packages('seriation',repos = 'http://cran.us.r-project.org')
library(corrplot)
library(corrgram)
#help(corrplot)
corrplot(cor.data,method='color')
#corrgram(df,order=TRUE, lower.panel=panel.shade, upper.panel=panel.pie, text.panel=panel.txt)

#model <- lm(y ~ x1 + x2,data)
#model <- lm(y ~. , data) # Uses all features
model <- lm(sales ~ .,data=advertising)

summary(model)

# Grab residuals
res <- residuals(model)
# Convert to DataFrame for gglpot
res <- as.data.frame(res)
head(res)
library(ggplot2)
# Histogram of residuals
ggplot(res,aes(res)) +  geom_histogram(fill='blue',alpha=0.5)
#`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

plot(model)



