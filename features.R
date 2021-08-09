### Change column names!
tokyo2021 <- rename(medals, 
                    country = Team.NOC,
                    gold = Gold.Medal,
                    silver = Silver.Medal,
                    bronze = Bronze.Medal,
                    rankbytotal = Rank.by.Total,
                    ccode = NOCCode
)


### Convert frame to tibble

tokyo <- as_tibble(tokyo2021)


#### Write new data

write.csv(tokyo, "./data/interim/data.cvs", row.names = FALSE )