#Lab 5 Report- Marbled Salamander Dispersal data 

#Import Data set "Dispersal"
library(readr)
dispersal_data <- read_csv("dispersal.csv")
View(dispersal_data)
dat_dispersal <- data.frame(dispersal_data)

# Create plot 
plot(x=dat_dispersal$disp.rate.ftb, y=dat_dispersal$dist.class,
     main="Dispersment vs Distance",
     xlab="Dispersion rate",
     ylab="Distance")

#Q1 Exponential Function of plot 
plot(x=dat_dispersal$dist.class, y=dat_dispersal$disp.rate.ftb,
     main="Dispersment vs Distance",
     xlab="Distance",
     ylab="Dispersion Rate")
exp_fun=function(x, a, b)
{
  return (a * exp(-b*x))
}

#Q2 4 Different curves 
curve(
  exp_fun(x, 1.9, 0.1),from=0, to=50, add= TRUE,col="black", lty="solid",
  main="Exponential Curve of 5 Functions",
  xlab="X",
  ylab="Y")
curve(
  exp_fun(x, 1.9, 0.3),from=0, to=50, add= TRUE,col="black", lty="dotted")
curve(
  exp_fun(x, 1.2, 0.2),from=0, to=50, add= TRUE,col="red", lty="solid")
curve(
  exp_fun(x, 1.2, 0.4),from=0, to=50, add= TRUE,col="red", lty="dotted")

#Q5 6 Ricker curves 
ricker_fun = function(x, a, b)
{
  return (a * x * exp(-b*x))
}

curve(
  ricker_fun (x, 25, 0.1),
  from = 0, to = 100, add = TRUE, col="Black", lty="solid",
  main="Ricker Curve for 6 Functions", 
  xlab="X",
  ylab="Y"
)
curve(
  ricker_fun (x, 20, 0.2),
  from = 0, to = 100, add = TRUE, col="Black", lty="dotted"
)
curve(
  ricker_fun (x, 10, 0.2),
  from = 0, to = 100, add = TRUE, col="Black", lty="dotted"
)
curve(
  ricker_fun (x, 75, 0.3),
  from = 0, to = 100, add = TRUE, col="Red", lty="solid"
)
curve(
  ricker_fun (x, 50, 0.3),
  from = 0, to = 100, add = TRUE, col="Red", lty="dotted"
)
curve(
  ricker_fun (x, 40, 0.3),
  from = 0, to = 100, add = TRUE, col="Red", lty="dotted"
)

#Q8 Scatterplot with linear model 
plot(x=dat_dispersal$dist.class, y=dat_dispersal$disp.rate.ftb,
     main="Dispersment vs Distance 
     Linear Model",
     xlab="Distance",
     ylab="Dispersion Rate")
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1,y1, slope), slope))
}
curve(
  line_point_slope(x,600,0.4,-0.00046),
  add=TRUE
)

#10 Scatterplot with an Exponential Function 
plot(x=dat_dispersal$dist.class, y=dat_dispersal$disp.rate.ftb,
     main="Dispersment vs Distance
     Exponential Model",
     xlab="Distance",
     ylab="Dispersion Rate")
exp_fun=function(x, a, b)
{
  return (a * exp(-b*x))
}
curve(
  exp_fun(x, 3, 0.005),
  from=0,
  to=1500,
  add=TRUE,
)

#12 Scatterplot with a Ricker Function 
plot(x=dat_dispersal$dist.class, y=dat_dispersal$disp.rate.ftb,
     main="Dispersment vs Distance
     Ricker Model",
     xlab="Distance",
     ylab="Dispersion Rate")
ricker_fun = function(x, a, b)
{
  return (a * x * exp(-b*x))
}
curve(
  ricker_fun (x,0.009,0.0045),
  add = TRUE
)

# Residuals for fitted models 
dat_dispersal$linear = line_point_slope(dat_dispersal$dist.class, 600,0.4,-0.00046)
dat_dispersal$exp_fun = exp_fun(dat_dispersal$dist.class, 3, 0.005)
dat_dispersal$ricker_fun = ricker_fun(dat_dispersal$dist.class,0.009,0.0045)

dat_dispersal$resids_linear = dat_dispersal$disp.rate.ftb - dat_dispersal$linear
dat_dispersal$resids_exp = dat_dispersal$disp.rate.ftb - dat_dispersal$exp_fun
dat_dispersal$resids_ricker = dat_dispersal$disp.rate.ftb - dat_dispersal$ricker_fun

par(mfrow=c(3,1))
hist(dat_dispersal$resids_linear,
     main = "Histogram of Linear Function Residuals",
     xlab = "Predicted Values",
     col = "darkseagreen2")
hist(dat_dispersal$resids_exp,
     main = "Histogram of 
     Exponential Function Residuals",
     xlab = "Predicted Values",
     col = "lightpink")
hist(dat_dispersal$resids_ricker,
     main = "Histogram of Ricker Function Residuals",
     xlab = "Predicted Values", 
     col="darkslategray2")