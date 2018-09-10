name_vec <- c("Ani", "Ana", "Budi", "Asep", "Udin")

study_mat <- matrix(sample(100:80, 10), byrow = TRUE, nrow = 2)
class(study_mat)

names = name_vec <- c("Ani", "Ana", "Budi", "Asep", "Udin")
ages = sample(20:30, 5)
gender = c("F", "F", "M", "M", "M")
work = c(T, F, T, F, F)

bio = data.frame(names, ages, gender, work)

data_list = list(name_vec, study_mat, bio)

names(data_list) = c("name", "study", "bio")

data_list$study

data_list$name

vec <- c(10,20,30)

apply(vec, mean)
sapply(mean, vec)
lapply()