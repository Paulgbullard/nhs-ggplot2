ggplot(movies, aes(x = votes, y = rating)) +
  geom_point() +
  labs(x = "Number of votes",
       y = "Rating (/10)",
       title = "Comparison of votes to rating") +
  ylim(0, 10)

ggplot(movies, aes(x = year)) +
  geom_histogram(binwidth = 1)

ggplot(movies, aes(x = year)) +
  geom_density()

ggplot(movies, aes(x = classification)) +
  geom_bar(fill = "blue")

ggplot(movies, aes(x = classification, fill = classification)) +
  geom_bar() +
  scale_fill_manual(values = c("12A" = "firebrick",
                               "15" = "thistle",
                               "18" = "slategrey",
                               "PG" = "steelblue",
                               "U" = "pink"))

ggplot(data = bond, aes(x = Kills, y = Alcohol_Units)) +
  geom_point(aes(colour = Actor))

ggplot(data = bond, aes(x = Kills, y = Alcohol_Units)) +
  geom_point(aes(colour = Actor, 
                 shape = Nationality),
             size = 3)

ggplot(data = bond, aes(x = Kills, y = Alcohol_Units)) +
  geom_point(aes(colour = Relationships, 
                 shape = Nationality),
             size = 3)

ggplot(bond, aes(x = Actor, y = Kills, colour = Nationality)) +
  geom_boxplot() +
  geom_point(size = 3)

ggplot(bond, aes(x = Actor, y = Kills, colour = Nationality)) +
  geom_point(size = 3) +
  geom_boxplot()

ggplot(bond, aes(x = Nationality)) +
  geom_bar(aes(fill = Actor), position = "stack") +
  theme_spongeBob()

ggplot(bond, aes(x = Alcohol_Units)) +
  geom_histogram(binwidth = 1, aes(fill = Nationality))

bond_full <- ggplot(bond, aes(x = Kills, y = Alcohol_Units, text = Actor)) +
  geom_point(aes(size = Relationships, colour = Nationality)) +
  theme_minimal() +
  labs(title = "007 kills by alcohol consumed",
       subtitle = "Colour coded by nationality, sized on relationship",
       y = "Alcohol consumed (Units)"
       )

View(bond)

ggplotly(bond_full)
