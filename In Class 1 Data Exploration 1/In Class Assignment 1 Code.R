data(iris)
head(iris)

iris$Sepal.Width
mean(iris$Sepal.Length)
sd(iris$Sepal.Width)

plot(x = iris$Sepal.Width, y = iris$Sepal.Length)

data_center_x=mean(iris$Sepal.Width)
data_center_y = mean(iris$Sepal.Length)
c(data_center_x,data_center_y)

plot(x =iris$Sepal.Width, y =iris$Sepal.Length)
points (x=data_center_x, y=data_center_y, col= "red")


R version 4.1.1 (2021-08-10) -- "Kick Things"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> data(iris)
> head(iris)
Sepal.Length Sepal.Width Petal.Length Petal.Width
1          5.1         3.5          1.4         0.2
2          4.9         3.0          1.4         0.2
3          4.7         3.2          1.3         0.2
4          4.6         3.1          1.5         0.2
5          5.0         3.6          1.4         0.2
6          5.4         3.9          1.7         0.4
Species
1  setosa
2  setosa
3  setosa
4  setosa
5  setosa
6  setosa
> iris$Sepal.Width
[1] 3.5 3.0 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 3.7 3.4 3.0
[14] 3.0 4.0 4.4 3.9 3.5 3.8 3.8 3.4 3.7 3.6 3.3 3.4 3.0
[27] 3.4 3.5 3.4 3.2 3.1 3.4 4.1 4.2 3.1 3.2 3.5 3.6 3.0
[40] 3.4 3.5 2.3 3.2 3.5 3.8 3.0 3.8 3.2 3.7 3.3 3.2 3.2
[53] 3.1 2.3 2.8 2.8 3.3 2.4 2.9 2.7 2.0 3.0 2.2 2.9 2.9
[66] 3.1 3.0 2.7 2.2 2.5 3.2 2.8 2.5 2.8 2.9 3.0 2.8 3.0
[79] 2.9 2.6 2.4 2.4 2.7 2.7 3.0 3.4 3.1 2.3 3.0 2.5 2.6
[92] 3.0 2.6 2.3 2.7 3.0 2.9 2.9 2.5 2.8 3.3 2.7 3.0 2.9
[105] 3.0 3.0 2.5 2.9 2.5 3.6 3.2 2.7 3.0 2.5 2.8 3.2 3.0
[118] 3.8 2.6 2.2 3.2 2.8 2.8 2.7 3.3 3.2 2.8 3.0 2.8 3.0
[131] 2.8 3.8 2.8 2.8 2.6 3.0 3.4 3.1 3.0 3.1 3.1 3.1 2.7
[144] 3.2 3.3 3.0 2.5 3.0 3.4 3.0
> iris$Sepal.Width
[1] 3.5 3.0 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 3.7 3.4 3.0
[14] 3.0 4.0 4.4 3.9 3.5 3.8 3.8 3.4 3.7 3.6 3.3 3.4 3.0
[27] 3.4 3.5 3.4 3.2 3.1 3.4 4.1 4.2 3.1 3.2 3.5 3.6 3.0
[40] 3.4 3.5 2.3 3.2 3.5 3.8 3.0 3.8 3.2 3.7 3.3 3.2 3.2
[53] 3.1 2.3 2.8 2.8 3.3 2.4 2.9 2.7 2.0 3.0 2.2 2.9 2.9
[66] 3.1 3.0 2.7 2.2 2.5 3.2 2.8 2.5 2.8 2.9 3.0 2.8 3.0
[79] 2.9 2.6 2.4 2.4 2.7 2.7 3.0 3.4 3.1 2.3 3.0 2.5 2.6
[92] 3.0 2.6 2.3 2.7 3.0 2.9 2.9 2.5 2.8 3.3 2.7 3.0 2.9
[105] 3.0 3.0 2.5 2.9 2.5 3.6 3.2 2.7 3.0 2.5 2.8 3.2 3.0
[118] 3.8 2.6 2.2 3.2 2.8 2.8 2.7 3.3 3.2 2.8 3.0 2.8 3.0
[131] 2.8 3.8 2.8 2.8 2.6 3.0 3.4 3.1 3.0 3.1 3.1 3.1 2.7
[144] 3.2 3.3 3.0 2.5 3.0 3.4 3.0
> 
  > mean(iris$Sepal.Length)
[1] 5.843333
> sd(iris$Sepal.Width)
[1] 0.4358663
> plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
> data_center_x=mean(iris$Sepal.Width)
> data_center_y = mean(iris$Sepal.Length)
> c(data_center_x,data_center_y)
[1] 3.057333 5.843333
> plot(x =iris$Sepal.Width, y =iris$Sepal.Length)
> points (x=data_center_x, y=data_center_y, col= "red")

> line_point_slope = function(x, x1, y1, slope)
  + {
    +     get_y_intercept = 
      +         function(x1, y1, slope) 
        +             return(-(x1 * slope) + y1)
    +     
      +     linear = 
        +         function(x, yint, slope) 
          +             return(yint + x * slope)
      +     
        +     return(linear(x, get_y_intercept(x1, y1, slope), slope))
      + }

line_point_slope(2,4,-4,-2)

> plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
> points(x = data_center_x, y = data_center_y, col = "red")
> curve(
  +     line_point_slope(
    +         x, 
    +         data_center_x, 
    +         data_center_y,
    +         0.5), 
  +     add = TRUE)

title(main="Chloe's Floral Line")