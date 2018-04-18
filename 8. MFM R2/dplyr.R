install.packages("dplyr")
library(dplyr)

file = "/home/ml-engineer/Documents/Github/mfm-r2/telcom.csv"
telco_df <- read.csv(file, header = TRUE, stringsAsFactors = FALSE)
str(telco_df)

#example:
#get dimension
telco_df %>% dim_desc()


#get descriptive total day minutes
telco_df %>% summarise_each(funs(min, max, sd, mean), total.day.minutes)

#order by state
telco_state = arrange(telco_df, state)
telco_state$state

#filter
head(filter(telco_df, international.plan == "yes" & voice.mail.plan == "no"))

#join in dplyr
inner_join()
left_join()
right_join()
full_join()

#group by
telco_df %>% group_by(voice.mail.plan) %>% 
  summarise(vmp = length(voice.mail.plan), ip = length(international.plan))

#mutate
telco_calls = telco_df %>% select(ends_with("calls"))
str(telco_calls)

night_intl_calls = telco_calls %>% mutate(total_night_and_intl_calls = total.intl.calls + total.night.calls)
str(night_intl_calls)