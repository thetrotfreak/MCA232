df_mtcars <- datasets::mtcars
hist(df_mtcars$gear)

plot(density(df_mtcars$hp), lwd=2, col="red", main="Density")

xa = mtcars$hp
ya = mtcars$disp

den_x = density(mtcars$hp),
den_y = density(mtcars$disp),

plot(
    den_x,
    lwd = 2,
    col = "green",
    main = "Density plot of mtcars hp & disp",
    xlab = "",
    xlim = c(
        min(den_x$x, den_y$y),
        max(den_x$x, den_y$y),
    ),
    ylim = c(
        min(den_x$x, den_y$y),
        max(den_x$x, den_y$y),
    ),
)

legend(
    "topright",
    legend = c("hp", "disp"),
    pch = c(19, 19),
    bty = "1",
    pt.cex = 0.8,
    cex = 0.8,
    text.col = "black",
    horiz = T,
    inset = c(0.1, 0.1)
)

boxplot(
    hp~cyl,
    data=mtcars,
    main="Horse power data boxplot",
    ylab="hp",
    xlab="No. of cylinders",
    col=c("orange", "red", "blue")
)
