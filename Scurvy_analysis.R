summary("scurvy.csv")
View("scurvy")
read.csv("scurvy.csv")
head(scurvy)
library(tidyverse)

scurvy1 <- table(scurvy$treatment, scurvy$gum_rot_d6)
scurvy$gum_rot_d6 <- as.factor(scurvy$gum_rot_d6)

ggplot(data = scurvy, x = gum_rot_d6) +
  geom_bar()

scurvyplot <- scurvy %>%
  geom_bar(gum_rot_d6)
