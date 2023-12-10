ds <- datasets::mtcars

hist(ds$gear)

# install "vioplot"
install.packages("vioplot")

# violin plot is a representation
# of the density around
# the box plot

vioplot::vioplot(
    mtcars$hp,
    col=2,
    rectCol="pink",
    lineCol="white",
    colMed="red",
    border="black",
    pchMed=16,
    plotCentre="points"
)

stripchart(
    mtcars$hp,
    method="jitter",
    col="black",
    vertical=T,
    pch=19,
    add=T
)

vioplot::vioplot(
    mtcars$hp~mtcars$cyl,
    col=5:length(levels(mtcars$cyl)),
    xlab="Cylinder",
    ylab="Horser power"
)

stripchart(
    mtcars$hp~mtcars$cyl,
    vertical=T,
    method="jitter",
    pch=19,
    add=T,
    col=10:8
)

#pairs(mtcars)
#
#skewness()
#
#kurtosis()

df_mtcars$cyl <- as.ordered(mtcars$cyl)
df_mtcars$gear <- as.ordered(mtcars$gear)
df_mtcars$carb <- as.ordered(mtcars$carb)
df_mtcars$carb <- as.factor(mtcars$carb)
df_mtcars$carb <- as.factor(mtcars$carb)
df_mtcars$carb <- as.factor(mtcars$carb)

barplot(table(mtcars$gear))

pie(
    table(mtcars$gear),
    col=c("purple","orange", "skyblue")
)

# C(""...) for pie names
names()

cats <- cut(
    mtcars$mpg,
    breaks = c(10, 15, 20, max(mtcars$mpg)),
)

pie(table(cats))
levels(cats)

barplot(
    table(mtcars$am, mtcars$cyl)
)

barplot(
    table(mtcars$cyl, mtcars$am),
    beside=T
)
