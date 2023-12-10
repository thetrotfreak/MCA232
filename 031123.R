v = sample(1:20, size=16, replace=T)

A <- matrix(v, nrow=4, ncol=4, byrow=TRUE)
B <- matrix(v, nrow=2, ncol=4, byrow=TRUE)
C <- matrix(v, nrow=4, ncol=4, byrow=TRUE)

A

B

# Matrix Operations

# A + C
A + C

# A - C
A - C

# B * A
B %*% A

# A / C
A / C

# A %% C
A %% C

# Logical Indexing:
# ----------------
# let A be a matrix of dimension mxn
#
# where, m is Rows, &
#        n is Columns
# then,
#
# [] -> A
# [T/F, T/F] -> consider R1...n C1...n
# [c(T/F), c(T/F)] -> consider R1...n C1...n
# [c(for R1...n: T.../F..., for C1...n: T.../F...)] -> consider the logical
#                                                      vector, fills with T
#                                                      for missing indexes
#
#
A[]
A[F,T]
A[c(T), F]
A[T]
A[F, T]
A[c(T,T,F,F), c(F,F,T,F)]

# Matrix Merge
cbind(A, B)
cbind(A, C)
