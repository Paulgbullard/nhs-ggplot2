library("ggplot2")

#read in data

movies <- readRDS("data/movies.rds")
View(movies)

ggplot(movies, aes(x = duration, y = rating)) +
  geom_point()
ggplot(movies, aes(x = classification)) +
  geom_bar()


#If creating own summary, use geom_col rather than geom_bar
summary_movies <- movies %>% 
  group_by(classification) %>% 
  summarise(total = n())

ggplot(summary_movies, aes(x = classification, y = total)) +
  geom_col()


ggplot(movies, aes(x = duration)) +
  geom_histogram(binwidth = 5)

my_boxplot <- ggplot(movies, aes(x = classification, y = rating)) +
  geom_boxplot()

my_boxplot +
  labs(title = "First plot",
       subtitle = "By Paul",
       x = "Age Rating",
       y = "Rating (0 - 10)",
       caption = "NHSR")

#Colours
ggplot(movies, aes(x = duration, y = rating)) +
  geom_point(aes(color = rating))

ggplot(movies, aes(x = duration, y = rating)) +
  geom_point(aes(colour = classification))

ggplot(movies, aes(x = duration, y = rating)) +
  geom_point(colour = "skyblue")

ggplot(movies, aes(x = duration, y = rating)) +
  geom_point(aes(shape = classification,
                 colour = classification), size = 3, alpha = 0.6)

ggplot(movies, aes(x = duration)) +
  geom_histogram(binwidth = 5) +
  facet_wrap(~classification, 1)

bond = readRDS("data/bond.rds")

View(bond)

bond_kills <- ggplot(bond, aes(x = Kills, y = Alcohol_Units)) +
  geom_point(aes(colour = Actor)) +
  theme_classic()

library(plotly)

bond_kills

ggplotly(bond_kills)


install.packages("tvthemes")
library(tvthemes)
