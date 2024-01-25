library(prob)

# for fun
tosscoin(3)
rolldie(2)


# get observations where sum of the faces of all the rolled dice
# is > 16
subset(rolldie(3), X1+X2+X3 > 16)

# throw 2 dice
# get chances of subtraction of the face values < 5
subset(rolldie(2), X1-X2 < 2)

sample <- cards()
subset(sample, suit == "Heart")
subset(sample, rank %in% 7)

sample <- tosscoin(2, makespace = TRUE)
sample[1:3, ]

sample <- cards(jokers=T, makespace = TRUE)
nrow(subset(sample, rank %in% "K"))
subset(cards(jokers = T, makespace = T), suit == "Heart")

# set operations
union(
   subset(cards(), suit == "Heart"),
   subset(cards(), rank %in% 7:9)
)

intersect(
   subset(cards(), suit == "Heart"),
   subset(cards(), rank %in% 7:9)
)

setdiff(
   subset(cards(), suit == "Heart"),
   subset(cards(), rank %in% 7:9)
)
