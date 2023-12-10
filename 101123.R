# import a dataset
dset = read.table(
    url(
        "http://assets.datacamp.com/blog_assets/chol.txt"
    ),
    header = TRUE
)

# checkout the dataset
head(dset)

# useful info on the dataset
summary(dset)

dset
