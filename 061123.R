# v = sample(1:20, size=16, replace=T)

A <- matrix(c(c(1,-2, 3), c(2, 0, 3), c(1, 5, 4)),
            nrow = 3,
            ncol = 3,
            byrow = TRUE)
A

# Determinant of a matrix
# determines the factor
# by which the area is scaled
# by the same matrix
det(A)

# Inverse of a matrix
solve(A)

# https://www.math.ucla.edu/~yanovsky/Teaching/Math151B/handouts/GramSchmidt.pdf
qr(A)

diag(A)
diag(A) = c(10, 20, 30)
A

eigen(A)

###
# DataFrame
###
name = c("Person 1", "Person 2", "Person 3")
age = c(23, 44, 37)
height = c(5.7, 6.2, 5.9)
weight = c(77, 78, 80)
gender = factor(c("Male", "Female", "Other"))
df = data.frame(name, age, height, weight, gender)

class(df)
df[1]
df[1, 2]
df(c(1, 3), 4)

# Indexing
df$age
df["age"]
df[2]

summary(df)

