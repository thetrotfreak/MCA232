name = c("Student 1", "Student 2", "Student 3")
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


df=read.csv("/mnt/c/Users/bivas/Downloads/Placement_data_full_class.csv")
df
summary(df)
riches=nrow(subset(df, salary>700000))
riches

# rownames(DataFrame) = c("...", "...", ...)
# colnames(DataFrame) = c("...", "...", ...)

comment(df) = "Indepth placement details"
attributes(df)
attributes(df)$comment


df_mtcars <- datasets::mtcars
str(df_mtcars)
dim(df_mtcars)
df_mtcars
colnames(df_mtcars)
min(df_mtcars$wt)
df_mtcars[which.min(df_mtcars$wt),]
df_mtcars[which.max(df_mtcars$disp),]
df_mtcars[which.max(df_mtcars$qsec),]

# automatic cars
nrow(subset(df_mtcars, am==0))

rownames(df_mtcars[which.max(df_mtcars$wt),])

# auto with 4 cyl
nrow(subset(df_mtcars, am==0 & cyl==4))

# avg wt of 8cyl
mean(subset(df_mtcars, cyl==8)$wt)

#
