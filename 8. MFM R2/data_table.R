install.packages("data.table")
require(data.table)

file = "telcom.csv"
telco = read.csv(file, header = TRUE, stringsAsFactors = F)

file_sosmed = "sosmed.csv"
sosmed = read.csv(file_sosmed, header = TRUE, stringsAsFactors = F)
  
dim(telco)

#set RFID
telco["RFID"] = c(1:3333)
names(telco)

#move column
telco <- telco[,c(22, 1:21)]

#wrangling first
str(telco)
telco$state <- as.factor(telco$state)
telco$international.plan <- as.factor(telco$international.plan)
telco$voice.mail.plan <- as.factor(telco$voice.mail.plan)
telco$churn <- as.factor(telco$churn)
str(telco)

#make data table
telco_dt = data.table(telco)
sosmed_dt = data.table(sosmed)

#getting started
telco_dt[, length(RFID), by = "churn"]

#set key index
setkey(telco_dt, RFID)
setkey(sosmed_dt, RFID)

key(telco_dt)
key(sosmed_dt)

head(telco_dt)

#print structure
str(telco_dt)

#mean and group by
telco_dt[, .(mean_vmail_message = mean(number.vmail.messages)), by = state]

#Exercise
#1 get new metrics total calls and total minutes

#2 select only state is WV or MI and churn is False
telco_dt[]

#3 get mean, median, mode, std for each state

#4 Join table
#inner join
inner = merge(telco_dt, sosmed_dt, all = FALSE)

#left join


#right join


#outer join



#5 get data then order ascending area code but descending customer service call


#6 get first third of state
