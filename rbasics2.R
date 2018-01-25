# Strings and quotes

"this is a string"

'this is also a string'

"This is a 'string' with quotes in it"

'This is also a \'string\' with quotes in it'

# Statistical procedures

?t.test

?rnorm

set.seed(42)

x <- 1:10
e <- rnorm(10, 0, 1)
y <- x + e

t.test(x, y)
t.test(x, y, paired = TRUE)

?cor

cor(x, y)

# Modelling

plot(y~x)

model <- lm(y~x)
summary(model)
plot(model)

plot(y~x)
abline(model)

# Built-in R data sets

data()

# Let's use iris

iris

head(iris)
iris$Species
iris$Sepal.Length
mean(iris$Sepal.Length)


# Let's pretend there's a ridiculous outlier

iris$Sepal.Length[15] <- 999
iris$Sepal.Length

mean(iris$Sepal.Length)

# Sometimes a value like 999 is really just a missing observation coded a weird way. Let's replace it

iris$Sepal.Length[15] <- NA
mean(iris$Sepal.Length)

mean(iris$Sepal.Length, na.rm = TRUE)


#More about NA

NA + 4
NA * 100
1 / 0

NA == 0

# Bonus look-ahead

library(dplyr)
t.test(iris %>% filter(Species == "virginica") %>% select(Petal.Width),
       iris %>% filter(Species == "versicolor") %>% select(Petal.Width))