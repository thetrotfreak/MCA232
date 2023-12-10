library(moments)
library(DescTools)
library(ggplot2)

View(mtcars)

mean(mtcars$mpg)
median(mtcars$mpg)
Mode(mtcars$mpg)

# different, why?
skewness(mtcars$mpg)
Skew(mtcars$mpg)

# plot(
#     density(mtcars$wt),
#     lwd = 2,
#     col = "red",
#     main = "Density"
# )
#
# rug(jitter(mtcars$wt))

ggplot(
    data = mtcars,
    aes(
        x = `mpg`,
    )
) + geom_density(

) + theme_minimal(

)

# it's different again, why?
Kurt(mtcars$mpg)
kurtosis(mtcars$mpg)
