#Plotting a PDF Curve 
#Basic Plot of a Normal Curve

#Generate a vector of x-values 
x = seq(-3, 3, length.out = 1000)
y = dnorm(x)
plot (x, y, main = "Normal PDF", type = "l")
abline(h = 0)

#Plot a histogram of body masses
install.packages("palmerpenguins")
require(palmerpenguins)
hist(
  penguins$body_mass_g, 
  main = "Histogram of Penguin Body Mass",
  xlab = "Body Mass (g)")

#Generate random numbers from a Norm Distn
mean(penguins$body_mass_g, na.rm = TRUE)
sd(penguins$body_mass_g, na.rm = TRUE)
nrow(penguins)
#4 Sets of random penguin body masses using above quantities 
dat_1 = rnorm(n = 344, mean = 4202, sd = 802)
dat_2 = rnorm(n = 344, mean = 4202, sd = 802)
dat_3 = rnorm(n = 344, mean = 4202, sd = 802)
dat_4 = rnorm(n = 344, mean = 4202, sd = 802)

#Plot histograms of simulated data 
par(mfrow = c(2,2))
hist(dat_1)
hist(dat_2)
hist(dat_3)
hist(dat_4)

#Random uniform numbrs 
set.seed(12)
dat_unif = runif(n = 27, min = 0, max = 4)
hist(dat_unif)

#Setting random numbers with set.seed()
set.seed(1)
dat_unif_1 = runif(n = 270, min = 0, max = 4)
set.seed(1)
dat_unif_2 = runif(n = 270, min = 0, max = 4)

par(mfrow = c(1, 2))
hist(dat_unif_1)
hist(dat_unif_2)

#Calculating residual errors 
set.seed(123)
n = 17
slope = 0.7
intcp = 0.2
guess_x = 6
guess_y = 4
guess_slope = 0.72

x = runif(n = n, min = 1, max = 10)
y = rnorm(n = n, mean = slope * x + intcp)
plot(x, y, pch = 16)

#Creating a line_point_slope
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
curve(line_point_slope(x, guess_x, guess_y, guess_slope), add = T)

#Creating random data into a data frame 
set.seed(75)
n_pts = 10
x_min = 1
x_max = 10

x = runif(n = n_pts, min = x_min, max = x_max)
dat = data.frame(x = x, y_observed = rnorm(n_pts))
plot(y_observed ~ x, data = dat, pch = 8)

#Fit a linear deterministic model 
n_pts = 10
x_min = 1
x_max = 10

x = runif(n = n_pts, min = x_min, max = x_max)
dat = data.frame(x = x, y_observed = rnorm(n_pts))
plot(y_observed ~ x, data = dat, pch = 8)

guess_x = 6
guess_y = 0
guess_slope = 0.1

plot(y_observed ~ x, data = dat, pch = 8)
curve(line_point_slope(x, guess_x, guess_y, guess_slope), add = T)

#Add predicted values 
line_point_slope(dat$x, guess_x, guess_y, guess_slope)

#Making a column for residuals 
dat$y_predicted = line_point_slope(dat$x, guess_x, guess_y, guess_slope)

#Calculating residuals 
dat$resids = line_point_slope(dat$x, guess_x, guess_y, guess_slope)

#Plot of Residuals 
plot(y_observed ~ resids, data=dat,
     xlab="Observed Values",
     ylab="Model Residuals")

#Histogram of Residuals 
hist(
  dat$resids,
     xlab="Residuals",
     ylab="Frequency")


#Q1: 4 Vectors of norm-dist'd random numbers 
norm_17 <- rnorm(1:17, mean=10.4, sd=2.4)
norm_30 <- rnorm(1:30, mean=10.4, sd=2.4)
norm_300 <- rnorm(1:300, mean=10.4, sd=2.4)
norm_3000 <- rnorm(1:3000, mean=10.4, sd=2.4)
norm_mean <- 10.4
norm_sd <- 2.4

#Q2: Histogram of all 4 vectors 
par(mfrow=c(2,2))
hist(norm_17,
     main="17 Random 
     Data Point",
     xlab="Data Points",
     width=1600,
     height=1500, 
     res=180)
hist(norm_30,
     main= "30 Random 
     Data Points",
     xlab="Data Points",
     width=1600,
     height=1500, 
     res=180)
hist(norm_300,
     main="300 Random
     Data Points",
     xlab="Data Points",
     width=1600,
     height=1500, 
     res=180)
hist(norm_3000, 
     main="3000 Random
     Data Points",
     xlab= "Data Points",
     width=1600,
     height=1500, 
     res=180)

png(filename="lab_4_hist_01.png",
    width=1500, 
    height=1600, 
    res=180)

#Q7 Plot Density curve for Norm. Distribution 
png(filename="norm_1.png",
    width=1600, height=1500, res=180)
mean <- 10.4 
sd <- 2.4 
x=seq(0,20, length.out=1000)
y=dnorm(x, mean=10.4, sd=2.4)
plot(x,y, main= "Normal Dist'n with 
     Mean of 10.4 and SD of 2.4 ", 
     type= "l", xlim= c(0,20))
abline(h=0)

#Q9 Creating random datasets 
n_pts = 29
x_min = 2
x_max = 9
x = runif(n = n_pts, min = x_min, max = x_max)
y_observed = rnorm(n_pts)
dat_random = data.frame(x = x, y_observed = rnorm(n_pts))

dev.off()
par(mfrow=c(2,2))
plot(x, y_observed, dat=dat_random, main = "Scatterplot of Random Values",
     ylab="Observed Values",
     col="blueviolet", 
     pch=8)
plot(x, y_observed, dat=dat_random, main ="Scatterplot of Random Values
     Part 2",
     ylab="Observed Values",
     col="darkseagreen3", 
     pch=21)
hist(dat_random$x, 
     main="Histogram of Random Values",
     xlab="Observed Values",
     col="gold")
hist(dat_random$x,
     main="Histogram of Random Values
     Part 2",
     xlab="Observed Values",
     border="dodgerblue4",
       col="darkslategray1")

#Q11 Fit a linear function to one of your above plots 
n_pts = 50
x_min = 1
x_max = 12
x = runif(n = n_pts, min = x_min, max = x_max)
y_observed = rnorm(n_pts)
dat_random = data.frame(x = x, y_observed = rnorm(n_pts))

png(filename="Linear_model1",
    width=1600, height=1500, res=180)
plot(x, y_observed, dat=dat_random, main = "Scatterplot of Random Values",
     ylab="Observed Values",
     col="blueviolet", 
     pch=8)
abline(lm(y_observed~x, data=dat_random), col="blue")

#Q13 Create columns of predicted values and residuals 
n_pts = 50
x_min = 1
x_max = 12
x = runif(n = n_pts, min = x_min, max = x_max)
y_observed = rnorm(n_pts)
dat_random = data.frame(x = x, y_observed = rnorm(n_pts))

guess_x=5
guess_y=1
guess_slope=0.2
dat_random$y_predicted=line_point_slope(dat_random$x, guess_x, guess_y, guess_slope)
dat_random$residuals=dat_random$y_predicted - dat_random$y_observed

#Q14: Creating histogram and Scatterplots of above data 
hist(dat_random$residuals,
     main="Histogram of Model's Residuals",
     xlab="Residual Values",
     border="brown",
     col="coral2")
y_predicted <- dat_random$y_predicted
residuals <- dat_random$residuals
plot(y_predicted,residuals, dat=dat_random, 
     main="Scatterplot of 
     Predicted and Residual Values",
     xlab="Predicted Values",
     ylab="Residual Values", 
     col="darkorchid4",
     pch="*", 
     cex=1.5)

require(here)
## Loading required package: here
## here() starts at /Users/emmagreenlee/Documents/environmental_data/eco_634_2021


