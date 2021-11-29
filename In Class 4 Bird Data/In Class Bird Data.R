View(bird_sta)
dat_hab <- data.frame(bird_sta)
head(dat_hab)
hist(dat_hab$HAWO, 
     main = "Hairy Woodpecker Frequency",
     xlab = "Sightings")


hist(
  penguins$bill_length_mm,
  main = "Hist 'o Gram of Bill Length\nBy Mike Nelson",
  col = 
    adjustcolor(col = "steelblue", alpha.f = .4),
  border = "red",
  xlab = "Bill Length (in mm)")