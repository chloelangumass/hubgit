#Install psycho package for pairs.panels() for pairplots 
install.packages("psych")

require(psych)
pairs.panels(iris)

#Importing the data 
library(readr)
bird_sta <- read_csv("bird.sta.csv")
View(bird_sta)
library(readr)
hab_sta <- read_csv("hab.sta.csv")

dat_habitat <- data.frame(hab_sta)
dat_bird <- data.frame(bird_sta)

#Merging the two data frames 
dat_all <- merge(dat_habitat,dat_bird, by = c("basin", "sub", "sta"))
plot(ba.tot ~ elev, data =dat_all)

sample(dat_all$CEWA, 100)

#Presence/Absence 
sample(dat_all$CEWA, 100)
waxwing_count == (dat_all$CEWA)
waxwing_count >1

#Data type coercion 
as.numeric(waxwing_count >1)
cewa_present_absent <- as.numeric(waxwing_count >1)

#TEST
plot(x = dat_all$ba.tot, y = cewa_present_absent)

# Function to calculate the logistic parameter a given the slope and midpoint
get_logistic_param_a = function(slope, midpoint)
{
  b = slope / 4
  return (-midpoint * (slope / 4))
}
# Function to calculate the logistic parameter b given the slope
get_logistic_param_b = function(slope)
{
  return (slope / 4)
}
# Calculate the value of the logistic function at x, given the parameters a and b.
logistic = function(x, a, b)
{
  val = exp(a + b * x)
  return(val / (1 + val))
}
# Calculate the value of the logistic function at x, given a slope and midpoint.
logistic_midpoint_slope = function(x, midpoint, slope)
{
  b = get_logistic_param_b(slope)
  a = get_logistic_param_a(slope, midpoint)
  return(logistic(x, a, b))
}

#Logistic Fit 1 
plot(x = dat_all$elev, y = cewa_present_absent)
curve(logistic_midpoint_slope(x, midpoint = 400, slope = 0.1), add = TRUE)

#Logistic Fit 2 
plot(x = dat_all$elev, y = cewa_present_absent)
curve(logistic_midpoint_slope(x, midpoint = 400, slope = -0.1), add = TRUE)

#Logistic Fit 3 
plot(x = dat_all$elev, y = cewa_present_absent,
     cex=0.3,
     pch=16,
     col="blue4")
curve(logistic_midpoint_slope(x, midpoint = 400, slope = -0.05), add = TRUE)

#ASSIGNMENT
#Creating a pairplot using 3 terrain variables & basal area 
pairs(dat_habitat[, c("ba.tot", "elev", "slope", "aspect")])

#Presence/Absence Species #1 Common Raven (CORA)
raven_count = (dat_all$CORA)
raven_count == (dat_all$CORA)
raven_count >1
as.numeric(raven_count >1)
cora_present_absent <- as.numeric(raven_count >1)

get_logistic_param_a = function(slope, midpoint)
{
  b = slope / 4
  return (-midpoint * (slope / 4))
}
# Function to calculate the logistic parameter b given the slope
get_logistic_param_b = function(slope)
{
  return (slope / 4)
}
# Calculate the value of the logistic function at x, given the parameters a and b.
logistic = function(x, a, b)
{
  val = exp(a + b * x)
  return(val / (1 + val))
}
# Calculate the value of the logistic function at x, given a slope and midpoint.
logistic_midpoint_slope = function(x, midpoint, slope)
{
  b = get_logistic_param_b(slope)
  a = get_logistic_param_a(slope, midpoint)
  return(logistic(x, a, b))
}
plot(x = dat_all$ba.tot, y = cora_present_absent,
     main="Common Raven Presence/Absence",
     xlab="Basal Area",
     ylab="Presence/Absence",
     cex=0.5,
     pch=16)
curve(logistic_midpoint_slope(x, midpoint = 70, slope = -0.6), add = TRUE)

#Presence/Absence of Species #2 Black Capped Chickadee (BCCH)
chick_count = (dat_all$BCCH)
chick_count == (dat_all$BCCH)
chick_count >1
as.numeric(chick_count >1)
bcch_present_absent <- as.numeric(chick_count >1)
get_logistic_param_a = function(slope, midpoint)
{
  b = slope / 4
  return (-midpoint * (slope / 4))
}
# Function to calculate the logistic parameter b given the slope
get_logistic_param_b = function(slope)
{
  return (slope / 4)
}
# Calculate the value of the logistic function at x, given the parameters a and b.
logistic = function(x, a, b)
{
  val = exp(a + b * x)
  return(val / (1 + val))
}
# Calculate the value of the logistic function at x, given a slope and midpoint.
logistic_midpoint_slope = function(x, midpoint, slope)
{
  b = get_logistic_param_b(slope)
  a = get_logistic_param_a(slope, midpoint)
  return(logistic(x, a, b))
}
plot(x = dat_all$ba.tot, y = bcch_present_absent,
     main="Black Capped Chickadee Presence/Absence",
     xlab="Basal Area",
     ylab="Presence/Absence",
     cex=0.5,
     pch=16)
curve(logistic_midpoint_slope(x, midpoint = 95, slope = -0.6), add = TRUE)

#Total number of Gray Jays in all sampling sites 
jay_count = (dat_all$GRJA)
jay_count ==(dat_all$GRJA)
jay_count= sum(dat_all$GRJA)

#Total number of sampling sites where Jays were observed 
colSums(dat_all[c("GRJA")] > 0)


