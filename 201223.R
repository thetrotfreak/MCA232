capt_crisp = c(
    15.5,
    16.2,
    16.1,
    15.8,
    15.6,
    16.0,
    15.8,
    15.9,
    16.2
)

xbar <- mean(capt_crisp)
mu <- 16.0
alpha <- 0.05
n <- length(capt_crisp)

t_obs <- t.test(
    capt_crisp,
    alternative = "less",
    mu = mu,
    conf.level = 1-alpha,
)

# confidence is (1 - alpha), where alpha is typically 5% or 0.05

t_obs

# takes default values
t.test(capt_crisp)
