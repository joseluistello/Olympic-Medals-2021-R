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