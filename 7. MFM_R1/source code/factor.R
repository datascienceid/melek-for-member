gender <- c("Pria", "Wanita", "Wanita", "Pria", "Pria")
factor(gender)

gender_factor = factor(gender, ordered = TRUE, levels = c("Wanita", "Pria"))
gender_factor

c(gender_factor)

summary(gender)
summary(gender_factor)

