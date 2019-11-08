setwd('D:/NET WORK/Documents/Hassan/R Assignment')
# Question : 1 
val <- file.info('./FB_Dataset.csv')
filesize <- val$size
print(filesize)
# File size : 359766057 bytes

# Question : 2
#- ',' is used as the delimiter. 

# Question : 3
# Import the data and look at the first six rows
FBDataset <- read.csv(file = './FB_Dataset.csv')
#head(FBDataset)
print(colnames(FBDataset))

# Question : 4
# Unique page-names
uniquepage <- unique(FBDataset$page_name)
print(uniquepage)
print(length(uniquepage))

# Unique page-ids
uniquepageid <- unique(FBDataset$page_id)
print(uniquepageid)
print(length(uniquepageid))

# Question : 5
postdates <- FBDataset$posted_at
firstdate <- postdates[1]
enddate <- postdates[length(postdates)]
print(paste0("First Date: ", firstdate, " End Date: ", enddate))
xd = as.Date(enddate,'%d/%m/%y') - as.Date(firstdate,'%d/%m/%y')
print(paste0("Difference between (end-first): ", xd, " Days"))


# Question : 6
messages <- FBDataset$post_name
for (index in 1:length(messages)) {
  val <- FBDataset$post_name[index]
  if (grepl("Italian Dishes", val)){
    print(paste0("Post Message", messages[index]))
    print(paste0("Post ID: ", FBDataset$post_id[index]))
    break
  }
}


# Question : 7
donaldcount <- 0
messages <- FBDataset$message
for (message in messages){
  if (grepl("Donald Trump", message)){
    # print(message)
    donaldcount <- donaldcount + 1
  }
}
print(donaldcount)


# Question : 8
Obamacount <- 0
messages <- FBDataset$message
for (message in messages){
  if (grepl("Barack Obama", message)){
    # print(message)
    Obamacount <- Obamacount + 1
  }
}
print(Obamacount)

if (Obamacount > donaldcount){
  print(paste0("Barack Obama is more popular"))
}else{
  print(paste0("Donald Trump is more popular"))
}


# Question : 9

messages <- FBDataset$message

post_idvector <- c()
like_vector <- c()

for (index in 1:length(messages)){
  message <- FBDataset$message[index]
  likes <- FBDataset$likes_count[index]
  temp = lapply(message, tolower)
  val = temp[[1]]

  if ((grepl("trump", val)) & (likes > 100)) {
    post_idvector <- c(post_idvector, FBDataset$post_id[index])
    like_vector <- c(like_vector, likes)
  }
}


s_like_vector <- sort(like_vector, index.return=TRUE)
sink("trump.txt")
for (index in 1:length(s_like_vector$x)){
  i_val <- s_like_vector$ix[index]
  post_id_v <- post_idvector[i_val]
  like <- s_like_vector$x[index]
  cat("IDs:", post_id_v, 'Like:' ,like, '\n')
}
sink()


# Question : 10

messages <- FBDataset$message

post_idvector <- c()
donald_love_vector <- c()
donald_angry_vector <- c()
for (index in 1:length(messages)){
  message <- FBDataset$message[index]
  temp = lapply(message, tolower)
  val = temp[[1]]
  
  if ((grepl("trump", val)) | (grepl("donald", val))) {
    post_idvector <- c(post_idvector, FBDataset$post_id[index])
    donald_love_vector <- c(donald_love_vector, FBDataset$love_count[index])
    donald_angry_vector <- c(donald_angry_vector, FBDataset$angry_count[index])
  }
}

post_idvector <- c()
obama_love_vector <- c()
obama_angry_vector <- c()
for (index in 1:length(messages)){
  message <- FBDataset$message[index]
  temp = lapply(message, tolower)
  val = temp[[1]]
  
  if ((grepl("barack", val)) | (grepl("obama", val))) {
    post_idvector <- c(post_idvector, FBDataset$post_id[index])
    obama_love_vector <- c(obama_love_vector, FBDataset$love_count[index])
    obama_angry_vector <- c(obama_angry_vector, FBDataset$angry_count[index])
  }
}

# total_love_count <- sum(donald_love_vector) + sum(obama_love_vector)
# total_angry_count <- sum(donald_angry_vector) + sum(obama_angry_vector)
# 
# donald_love_per = (sum(donald_love_vector)/total_love_count)*100
# obama_love_per = (sum(obama_love_vector)/total_love_count)*100
# 
# donald_angry_per = (sum(donald_angry_vector)/total_angry_count)*100
# obama_angry_per = (sum(obama_angry_vector)/total_angry_count)*100
# 
# print(donald_angry_per)
# print(donald_love_per)
# print(obama_angry_per)
# print(obama_love_per)

total_donald_count <- sum(donald_love_vector) + sum(donald_angry_vector)
total_obama_count <- sum(obama_love_vector) + sum(obama_angry_vector)

donald_love_per = (sum(donald_love_vector)/total_donald_count)*100
obama_love_per = (sum(obama_love_vector)/total_obama_count)*100

donald_angry_per = (sum(donald_angry_vector)/total_donald_count)*100
obama_angry_per = (sum(obama_angry_vector)/total_obama_count)*100

print(donald_angry_per)
print(donald_love_per)
print(obama_angry_per)
print(obama_love_per)
if (obama_love_per > donald_love_per){
  print("Obama is more loved person")
} else {
  print("Donald is more loved person")
} 
