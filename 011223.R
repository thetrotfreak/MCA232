library(ggplot2)

View(ToothGrowth)

summary(ToothGrowth)

# 1
ggplot(
    data = ToothGrowth,
    aes(
        x = `dose`
    )
) + geom_density(

) + facet_grid(
    ~`dose`
)

# 2
ggplot(
    data = ToothGrowth,
    aes(
        y = `len`,
        x = `dose`,
        fill = `supp`
    )
) + geom_violin(

) + facet_grid(
    ~`supp`
) + scale_fill_brewer(
    palette = "Pastel2",
    direction = -1
) + labs(
    x = "Dose",
    y = "Tooth Length",
    fill = "Supplement"
) + theme_minimal()


supp.labs = c("Orange Juice", "Vitamin C")
names(supp.labs) = c("OJ", "VC")
# 3
ggplot(
    data = ToothGrowth,
    aes(
        group = `dose`,
        x = `dose`,
        y = `len`,
        fill = factor(`dose`)
    )
) + geom_boxplot(

) + facet_grid(
    ~`supp`,
    labeller = labeller(supp = supp.labs)
) + theme(
    strip.text.x = element_text(
        color = "blue", face = "bold.italic"
    ),

) + labs(
    x = "Dose in milligrams/day",
    y = "Tooth length",
    title = "Tooth length vs. Dose levels:",
    subtitle = "Comparison by supplement type",
    fill = "dose",
)

# 4
ggplot(
    data = ToothGrowth,
    aes(
        x = `len`,
        fill = factor(`dose`)
    )

) + geom_dotplot(

) + labs(
    fill = "dose"
)

# 5
ggplot(
    data = ToothGrowth,
    aes(
        x = `dose`,
        y = `len`,
        color = `supp`
    )
) + geom_point(

) + scale_color_brewer(
    palette = "Accent"
) + labs(
    title = "Dose vs. Tooth Length",
    x = "Dose",
    y = "Tooth Length",
    color = "Supplement",
) + scale_color_discrete(
    labels = c("Orange Juice", "Vitamin C")
)
