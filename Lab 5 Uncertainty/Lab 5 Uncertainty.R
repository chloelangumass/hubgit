# Create Ricker Function 
ricker_fun = function(x, a, b)
{
  return (a * x * exp(-b*x))
}

#Plot of shape 
curve(
  ricker_fun (x, 1, 1),
  from = 0, to = 5, add = FALSE,
  main = "Ricker function: a=1, b=1",
  ylab= "f(x)", xlab= "x")

#Create exponential function 
exp_fun=function(x, a, b)
{
  return (a * exp(-b*x))
}
curve(
  exp_fun(x, 1, 1),
  from = 0, to = 10, add= FALSE, 
  main = "Exponential function: a=0.1, b=-1",
  ylab= "f(x)", xlab="x")

curve(
  exp_fun(x, 2.2, 1/15), add = FALSE, from = 0, to = 50,
  ann = FALSE, axes = TRUE, ylab = "f(x)"); box()

# Seed the RNG so we can reproduce our results 
set.seed(1234567)

#Specify the x-range and numbers of points: 
n_pts = 50
x_min = 2
x_max = 10

# Generate the x-values
x_sim = runif(n_pts, min = x_min, max = x_max)
#Intercept & slope 
param_intercept = 2.3
param_slope = 0.67
y_pred = param_intercept + x_sim * param_slope
plot(x_sim, y_pred, main = "Simulated Data\nNo Errors", xlab = "", ylab = "")

#Normal errors 1 
error_mean = 0
error_sd = 0.25

y_observed = 
  y_pred + 
  rnorm(
    n = n_pts, 
    mean = error_mean, 
    sd = error_sd)
plot(x_sim, y_observed, main = "Normally Distributed Errors\n Constant Variance", xlab = "", ylab = "")

#Normal errors 2 
error_mean = 0
error_sd = 0.1

y_observed_2 = 
  y_pred + 
  rnorm(
    n = n_pts, 
    mean = error_mean, 
    sd = error_sd * x_sim)

y_observed_3 = 
  y_pred + 
  rnorm(
    n = n_pts, 
    mean = error_mean, 
    sd = error_sd * x_sim)

par(mfrow = c(1, 3))
plot(x_sim, y_observed, main = "Normally Distributed Errors\n Constant Variance", xlab = "", ylab = "")
plot(x_sim, y_observed_2, main = "Normally Distributed Errors\n Increasing Variance", xlab = "", ylab = "")
plot(x_sim, y_observed_3, main = "Normally Distributed Errors\n Increasing Variance", xlab = "", ylab = "")

#Choosing a model
par(mfrow = c(3, 1))
plot(x_sim, y_observed)
plot(x_sim, y_observed_2)
plot(x_sim, y_observed_3)

par(mfrow = c(3, 1))
hist(y_observed - y_pred, main = "sim data 1", xlab = "observed y=values")
hist(y_observed_2 - y_pred, main = "sim data 2", xlab = "observed y=values")
hist(y_observed_3 - y_pred, main = "sim data 3", xlab = "observed y=values")


#Marbled Salamander Dispersal Data 
library(readr)
dispersal_data <- read_csv("dispersal.csv")





