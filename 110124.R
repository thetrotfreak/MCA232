# correlation & linear regression
# library(corrplot)

# correlation matrix
# corrplot::corrplot(
#    mtcars
# )

x <- c(8,11,7,10,12,5,4,6)
y <- c(11,30,25,44,38,25,20,27)

lr_model <-lm(
    formula = y~x
)
lr_model
plot(
    y~x,
    xlab = "Experience",
    ylab = "Ratings",
    main = "Regression Analysis",
    col = "blue",
    pch = 16,
)

abline(lr_model, lwd=3,lty=1,col="red")

predict(lr_model, data.frame(x=15))

summary(lr_model)
