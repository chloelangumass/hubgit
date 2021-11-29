install.packages("palmerpenguins")
install.packages("here")
require(palmerpenguins)
require(here)

class(penguins)
penguins=data.frame(penguins)
mean(penguins$body_mass_g, na.m=TRUE)
  --> # [1] NA 
boxplot(bill_depth_mm ~ sex, data = penguins)
dev.off()

coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)
coplot(body_mass_g ~ bill_depth_mm | bill_length_mm, data = penguins)
require(here)
png(filename = here("coplot1.png"), width = 800, height = 600)
coplot(body_mass_g ~ bill_depth_mm | bill_length_mm, data = penguins)
dev.off()

coplot(body_mass_g ~ flipper_length_mm | bill_length_mm, data = penguins)
png(filename = here("coplot2.png"), width = 800, height = 600)
coplot(body_mass_g ~ flipper_length_mm | bill_length_mm, data = penguins)
dev.off()

boxplot(penguins$flipper_length_mm ~ species, data=penguins)
dev.off()
