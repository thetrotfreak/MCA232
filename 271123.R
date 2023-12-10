cars <- datasets::mtcars

ggplot2::ggplot(
    data = cars,
    aes(
        x =wt,
        y = mpg,
        col = factor(cyl),
        size = factor(gear)
    ))+ geom_point(
        na.rm = TRUE
    ) + labs(
        size = "gear",
        col = "cyl"
    )

ggplot2::ggplot(
    data = cars,
    mapping = aes(
        x = mpg,
        fill = as.factor(cyl)
    )
) + geom_density(
    color = "black",
    linewidth = 0.25,
    alpha = 0.8
) + labs(
    x = "Miles Per Gallon",
    y = "",
    fill = "Cylinder"
)
