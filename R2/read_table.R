raw <- read.table("raw_telcom.txt", sep = "|", header = TRUE)

raw2 <- read.table("raw_telcom.txt", sep = "|", header = FALSE)

raw3 <- read.table("raw_telcom.txt", sep = "|", header = FALSE, stringsAsFactors = TRUE)

raw4 <- read.table("raw_telcom.txt", sep = "|", header = FALSE, stringsAsFactors = FALSE)

str(raw3)
str(raw4)

?read.table