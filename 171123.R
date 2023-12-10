# inferential statistics
# mean, median, mode, standard deviation, variation
#
#                                          data
#                                            ^
#                                          /  \
#                                         /    \
#                      qualitative<-------      ----->quantitative
#                      /       \                     /       \
#                   ordinal    nominal          discrete    continuous
#                   (unequal   (equal           (countable) (measurable)
#                   weights)   weights)
# there's no mode function, write your own!
# https://stackoverflow.com/questions/2547402/how-to-find-the-statistical-mode

df_lynx <- datasets::lynx
summary(df_lynx)
df_lynx

colnames(df_lynx)

# cex : font size
# las : x-axis orientation
# pch : pointer character, used for drawing the graph edge
# col : color

x<-2:6
plot(x)
plot(x, pch=23)

par() # cramp more graphs

