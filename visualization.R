#### Gold Medals Visualization 

tokyo %>% 
  group_by(country) %>% 
  count(gold) %>% 
  filter(gold >= 10) %>% 
  ggplot(aes(x = reorder(country, gold), y = gold)) +
  geom_bar(stat = 'identity', 
           size=1, 
           fill="darkgoldenrod2",) +
  geom_text(aes(label = gold),
            vjust = .5, nudge_y = .90, nudge_x = 0.15) +
  labs(x = "Country",
       y = "Gold Medals",
       title = "Countries with the most Gold medals") +
  coord_flip() +
  theme_classic() +
  theme(legend.position = "none")


#### Silver Medals Visualization

tokyo %>% 
  group_by(country) %>% 
  count(silver) %>% 
  filter(silver >= 10) %>% 
  ggplot(aes(x = reorder(country, silver), y = silver)) +
  geom_bar(stat = 'identity', 
           size=1,
           fill="azure3") +
  geom_text(aes(label = silver),
            vjust = .5, nudge_y = .90, nudge_x = 0.15) +
  labs(x = "Country",
       y = "Silver Medals",
       title = "Countries with the most Silver medals") +
  coord_flip() +
  theme_classic() +
  theme(legend.position = "none")

#### Bronze Medals Visualization

tokyo %>% 
  group_by(country) %>% 
  count(bronze) %>% 
  filter(bronze >= 10) %>% 
  ggplot(aes(x = reorder(country, bronze), y = bronze)) +
  geom_bar(stat = 'identity', 
           size=1,
           fill="chocolate3") +
  geom_text(aes(label = bronze),
            vjust = .5, nudge_y = .90, nudge_x = 0.15) +
  labs(x = "Country",
       y = "Bronze Medals",
       title = "Countries with the most Bronze medals") +
  coord_flip() +
  theme_classic() +
  theme(legend.position = "none")


### Ranked By Total medals

tokyo %>% 
  select(country, Total) %>% 
  slice_max(Total, n = 10) %>% 
  ggplot(aes(x = reorder(country, Total), y = Total)) +
  geom_bar(stat = 'identity', 
           size=1,
           fill="chocolate3") +
  geom_text(aes(label = Total),
            vjust = .70, nudge_y = 3, nudge_x = 0.15) +
  labs(x = "Country",
       y = "Medals",
       title = "Countries ranked by total medals") +
  coord_flip() +
  theme_classic() +
  theme(legend.position = "none")

#### Medals Distribution

ggplot(tokyo, aes(x = Total,
                  y= ..count.. / sum(..count..))) +i
geom_histogram(fill = "cornflowerblue",
               color = "black",
               binwidth = 9) +
  scale_y_continuous(labels = percent) +
  labs(x = "Medals",
       y = "Count Percent",
       title = "Medals distribution"
  ) +
  theme_classic() 