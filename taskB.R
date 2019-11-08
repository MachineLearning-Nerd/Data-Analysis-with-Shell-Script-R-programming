setwd('D:/NET WORK/Documents/Hassan/R Assignment')
# Task : B
FBDataset <- read.csv(file = './trump.csv')
head(FBDataset)
print(colnames(FBDataset))

values=as.POSIXct(FBDataset$Timestamp,format="%d/%m/%y %H:%M")
hist(values, "years", freq = TRUE)

# Import the data and look at the first six rows
FBDataset <- read.csv(file = './FB_Dataset.csv')
foxnews = FBDataset[FBDataset$page_name == "fox-news", ]

boxplot(comments_count~post_type,
        data=foxnews,
        main="Different boxplots for each activity",
        xlab="Post Type",
        ylab="Comments Counts",
        col = c("orange","red"),
        border="brown"
)

foxnews <- foxnews[-which(foxnews$comments_count >10000),]

boxplot(comments_count~post_type,
        data=foxnews,
        main="Different boxplots for each activity",
        xlab="Post Type",
        ylab="Comments Counts",
        col = c("orange","red"),
        border="brown"
)