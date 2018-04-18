install.packages("stringr")
library(stringr)

#str_split
name = c("Bandung", "DKI Jakarta", "Jakarta Barat",
         "Jakarta Selatan", "Semarang")
name
name_list <- str_split(string = name, pattern = " ")
name_list[[2]][2]

#str_trim
DSI = " Data Science Indonesia \t \n"
str_trim(DSI)

#str_sub
str_sub(DSI, start = 2, end = 13)

#str_detect
jakarta_true = str_detect(name, pattern = "Jakarta")
jakarta_true
name[jakarta_true]

str_extract(string = name, pattern = "Jakarta")

subject = "Data Data Club"
str_replace(subject, pattern = "Data", replacement = "Computer")
str_replace_all(subject, pattern = "Data", replacement = "Computer")

file = "/home/ml-engineer/Documents/Github/mfm-r2/presidents.csv"
presidents = read.csv2(file, stringsAsFactors = F)

#Exercise
#1
date_string = c("2018-01-20", "2018-03-15 20:10:14", 
                "13-10-2018 10:10:10 WIB", "12:12:01 13-12-2018",
                "Selasa, 10 Jan 2018", "10 Feb 2018 10:10:13")

str_replace_all(string = date_string, pattern = "[:digit:]{2}:[:digit:]{2}:[:digit:]{2}|WIB|\\w+, ", 
                replacement = "")
as.Date(date_string)

#2
domain = c("news.kompas.com", "bisnis.kompas.co.id", "ebisnis.detik.com", "tekno.kompas.id", "teknonstyle.okezone.com")


#3
degree = c("Name1, S.Kom.", "Name2, B.A.", "Nama3, M.Sc.", 
           "Yogya Ph.D", "Dr. Jakarta", "dr. Hewan", "Drs. Bandung")


#4
address = c("jl. Sudirman No.4, D.K.I Jakarta", "Menara Indonesia JL.Rasuna No.13", 
            "221B Baker Street", "101 Jalanin Aja Dulu St.")


#5
period = c("1010-2010", "1900-Sekarang", "2010 s/d 2013", "Dulu - Sekarang", "tidak di ketahui")
str_extract(string = period, pattern = "\\d.*")

