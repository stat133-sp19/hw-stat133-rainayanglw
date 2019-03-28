## ------
##
## Title: make-shots-charts-script
##
## description: creation of visually pleasing shot charts for all the players
##
## Input: five CSV files for the shots, one for each player
##
## Output: five separate plots in PDF format, one facetted shot chart in both PDF format and PNG format
## ------

curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)

library(ggplot2)
library(jpeg)
library(grid)

# create raste object
court_file <- "../images/nba-court.jpg"

court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))


# Create shot charts
curry_shot_chart <- ggplot(data=curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Stephen Curry (2016 Season)") +
  theme_minimal()

iguodala_shot_chart <- ggplot(data=iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Andre Iguodala (2016 Season)") +
  theme_minimal()

green_shot_chart <- ggplot(data=green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Draymond Green (2016 Season)") +
  theme_minimal()

durant_shot_chart <- ggplot(data=durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Kevin Durant (2016 Season)") +
  theme_minimal()

thompson_shot_chart <- ggplot(data=thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Klay Thompson (2016 Season)") +
  theme_minimal()


# Export charts to PDF format
pdf(file = "../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5)
print(curry_shot_chart)
dev.off()

pdf(file = "../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5)
print(iguodala_shot_chart)
dev.off()

pdf(file = "../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
print(green_shot_chart)
dev.off()

pdf(file = "../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
print(durant_shot_chart)
dev.off()

pdf(file = "../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
print(thompson_shot_chart)
dev.off()

# create facetted graph

# Load in shots-dataframe 
shots_data <- read.csv(file = '../data/shots-data.csv', stringsAsFactors = FALSE)

facetted_shot_chart <- ggplot(data=shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) + facet_wrap(~ name) + theme_minimal() + ggtitle("Shot Charts: GSW (2016 Season)")

pdf(file = "../images/gsw-shots-charts.pdf", width = 8, height = 7)
print(facetted_shot_chart)
dev.off()

png(filename = "../images/gsw-shots-charts.png", width = 8, height = 7, units = "in", res=150)
print(facetted_shot_chart)
dev.off()
