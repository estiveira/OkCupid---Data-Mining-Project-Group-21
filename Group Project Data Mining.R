
#### OkCupid ####

library(dplyr)

okcupid = read.csv("C:/Users/estiv/OneDrive - FCT NOVA/Ambiente de Trabalho/BA/Business Data Mining/Group Project/profiles okcupid.csv")
skimr::skim(okcupid)

# Remove the columns that are not useful

okcupid = okcupid[, -(7:15)]; okcupid
okcupid = okcupid[, -7]; okcupid

# Number of lines that have orientation different from straight

okcupid$orientation[okcupid$orientation != "straight"] %>% length()

# Create a new data frame with only lines that have orientation different from straight

okcupid_gay = okcupid[okcupid$orientation != "straight",]; okcupid_gay


































