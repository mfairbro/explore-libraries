install.packages("dplyr")
library(dplyr)

#' Which libraries does R search for packages?
.libPaths() # jenny version 

#' Installed packages

# THIS IS A CHANGE FOR GIT COMMITTING 

# Brand new package
install.packages("fs")
library(fs)
path_real(.Library) 

install.packages("tidyverse")
library(tidyverse)

ipt <- installed.packages() %>% 
  as_tibble()

## use installed.packages() to get all installed packages
installed.packages()

## how many packages?
nrow(installed.packages())

#' Exploring the packages

## count some things! inspiration



inst_pkg2 <- installed.packages(fields = c("LazyData", "Title", "Author")) %>% as_tibble()

inst_pkg2 %>% count(str_detect(Author, 'Hadley')) %>% mutate(prop = n / sum(n))

##   * tabulate by LibPath, Priority, or both
View(as.array(installed.packages()))

explore.table <- as.array(installed.packages())
View(explore.table)

##   * what proportion need compilation? #MF: Compilation is C++ or other languages with an R wrapper
##   * how break down re: version of R they were built on
summary(installed.packages())

#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
View(table(installed.packages()))

##   * how does the result of .libPaths() relate to the result of .Library?
.libPaths()
.Library
# MF: Answer - it's the second one 

#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
filter(explore.table, explore.table$Priority == "base")
## study package naming style (all lower case, contains '.', etc
## use `fields` argument to installed.packages() to get more info and use it!

# another component to explore is how recently they were made

# Jenny's version of this code is complete

