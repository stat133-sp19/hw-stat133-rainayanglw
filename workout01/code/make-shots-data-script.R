## ------
## Project: workout01 for stat133
##
## Script purpose: Script to combine five warriors player shots into one data file. 
##Input is CSV for each player while output is a summary of a final combined CSV.
##
## Date: 2018-03-08
##
## Author: Raina Yang
## ------

curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE, 
                  colClasses = c("character","character","integer","integer",
                                 "integer","integer", "factor","character",
                                 "character","integer","character",
                                 "integer","integer"),
                  col.names = c('Stephen Curry'),
                  stringsAsFactors = FALSE)
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE,
                     colClasses = c("character","character","integer","integer",
                                    "integer","integer", "factor","character",
                                    "character","integer","character",
                                    "integer","integer"),
                     col.names = c('Andre Iguodala'),
                     stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE,
                   colClasses = c("character","character","integer","integer",
                                  "integer","integer", "factor","character",
                                  "character","integer","character",
                                  "integer","integer"),
                   col.names = c('Kevon Durant'),
                   stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE,
                     colClasses = c("character","character","integer","integer",
                                    "integer","integer", "factor","character",
                                    "character","integer","character",
                                    "integer","integer"), 
                     col.names = c('Klay Thompson'),
                     stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE,
                  colClasses = c("character","character","integer","integer",
                                 "integer","integer", "factor","character",
                                 "character","integer","character",
                                 "integer","integer"), 
                  col.names = c('Graymond Green'),
                  stringsAsFactors = FALSE)

curry$shot_made_flag[curry$shot_made_flag == "y"] = "shot_yes"
curry$shot_made_flag[curry$shot_made_flag == "n"] = "shot_no"

iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] = "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] = "shot_no"

green$shot_made_flag[green$shot_made_flag == "y"] = "shot_yes"
green$shot_made_flag[green$shot_made_flag == "n"] = "shot_no"

durant$shot_made_flag[durant$shot_made_flag == "y"] = "shot_yes"
durant$shot_made_flag[durant$shot_made_flag == "n"] = "shot_no"

thompson$shot_made_flag[thompson$shot_made_flag == "y"] = "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] = "shot_no"

curry$minute = 12 * curry$period - curry$minutes_remaining
iguodala$minute = 12*iguodala$period - iguodala$minutes_remaining
green$minute = 12*green$period - green$minutes_remaining
durant$minute = 12*durant$period - durant$minutes_remaining
thompson$minute = 12*thompson$period - thompson$minutes_remaining

sink("../output/stephen-curry-summary.txt")
summary(curry)
sink()

sink("../output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink("../output/draymond-green-summary.txt")
summary(green)
sink()

sink("../output/kevin-durant-summary.txt")
summary(durant)
sink()

sink("../output/klay-thompson-summary.txt")
summary(thompson)
sink()

shots_data_og <- rbind(curry, iguodala, green, durant, thompson)
shots_data <- as.data.frame(shots_data_og)
write.csv(shots_data, "../data/shots-data.csv")

sink("../output/shots-data-summary.txt")
summary(shots_data_df)
sink()



