# Putting files into data.frames 

--> difficulty with using here/read, able to open files directly from R
read.csv(here("environmental_data", "data","catrate.csv"))
read.csv(here("environmental_data", "data","delomys.csv"))
read.csv(here("environmental_data", "data","rop.csv"))

dat_catrate <- data.frame(catrate)
dat_delomys <- data.frame(delomys)
dat_rope <- data.frame(rope)

head(dat_catrate)
head(dat_delomys)
head(dat_rope)

hist(dat_catrate$success,
     main= "Histogram of Yearly Pond Success",
     xlab="Success")
plot(dat_delomys$body_mass ~ dat_delomys$body_length,
     main="Chloe's Scatterplot",
     xlab= "Body Length",
     ylab= "Body Weight")
     