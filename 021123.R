studentList = list(
    "MCA",
    "BCA",
    c(44,55,67,11),
    TRUE,
    51.23,
    119.1
)


studentData = list(
    c("Assignment I", "MCQ", "Theory Test", "Practical Test", "Assignmnet II"),  matrix(c(55,67,96,90,83,56), nrow=2), list(c("Student 1", "Student 2", "Student 3"), c(2347110,2347111,2347112)))

names(studentData) = c("Assessments", "Marks", "Details")

studentData$Assessments[4]
studentData$Assessments[1]

studentVector = unlist(studentData)

set.seed(2347111)
x=c(1, 5, 4)
sample(x, 2)

sample(1:2, 1, replace = T)

.Random.seed[1:10]

v = sample(1:20, size=16, replace=T)

a <- matrix(v, nrow=4, ncol=4, byrow=TRUE, dimnames = list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3", "C4")))
b <- matrix(v, nrow=2, ncol=4, byrow=TRUE)
c <- matrix(v, nrow=8, ncol=2, byrow=TRUE)
b
a
rbind(a,b)

class(a)
dim(b)
b%*%a
a[1]
a[1, 3]
