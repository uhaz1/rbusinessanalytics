
#### Linear Regression model  ####


#large collection of datasets
library(MASS)
#datasets withthe ISLR book
#install.packages("ISLR")
library(ISLR)


### 1. import data 
### 2. clean data 
###   - check for missing values , other data issues
###   - set correct data types for columns
### 3. exploratory Data Analysis (EDA) 
###   - check for assumptions - multicollinearity - high correlations among input variables
### 4. Modelling
###   - Split data into Train and Test Groups
###   - Train model on train group
###   - Interpret model
###   - Plot residuals 
###   - Predict






#names(Boston)

### 1. import data 
advertising <- read.csv('./data/Advertising.csv')

## view sample
head(advertising)

#check data structure
str(advertising)
# summary of data
summary(advertising)

### 2. clean data 
###   - check for missing values , other data issues
any(is.na(advertising))


###   - set correct data types for columns
## factor() : categorical vairables- ensure they are defined as factor using factor()
str(advertising) 


### 3. exploratory Data Analysis (EDA) 
###   - check for assumptions - multicollinearity - high correlations among input variables
# get numeric columns
numeric.cols <- sapply(advertising, is.numeric)
print(numeric.cols)

# get correlations onthe numeric columns
correlation.data <- cor(advertising[,num.cols])

correlation.data


#lm.fit = lm(sales)

## package to plot correlations
#install.packages('corrplot')
library(corrplot)

#help(corrplot)
corrplot(correlation.data,method='color')

library(ggplot2)
## check histogram of sales
ggplot(advertising,aes(x=sales)) + geom_histogram(bins=20,alpha=0.5,fill='blue') + theme_minimal()


#####################
### 4. Modelling ####
#####################

###   - Split data into Train and Test Groups


###   - Train model on train group
#model <- lm(y ~ x1 + x2,data)
#model <- lm(y ~. , data) # Uses all features
model <- lm(sales ~ .,data=advertising)
summary(model)

###   - Interpret model

###   - Plot residuals (errors)
### histograms of residuals to be normally distributed. check textbook ISLR sectton 3.3 for for details on potential problems 
# get residuals (errors)
res <- residuals(model)

# Convert to DataFrame for gglpot
res <- as.data.frame(res)

head(res)

# Histogram of residuals
ggplot(res,aes(res)) +  geom_histogram(fill='blue',alpha=0.5)

plot(model)








