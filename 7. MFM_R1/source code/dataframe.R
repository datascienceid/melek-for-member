names = name_vec <- c("Ani", "Ana", "Budi", "Asep", "Udin")
ages = sample(20:30, 5)
gender = c("F", "F", "M", "M", "M")
work = c(T, F, T, F, F)

bio = data.frame(names, ages, gender, work, stringsAsFactors = F)
bio
str(bio)

#slicing
bio
bio[,1]
bio[1,]
bio[,1:3]
bio[, "names"]
bio$ages > 25
bio[(bio$ages > 25 & bio$gender == "M") | bio$ages < 26, ]

subset(df, bio$ages > 25)

?subset