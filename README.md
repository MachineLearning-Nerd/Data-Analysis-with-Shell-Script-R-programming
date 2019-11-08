# Data-Analysis-with-Shell-Script-and-R-programming
This repo is doing data analysis with .sh (shell script) and R
## assignment.R and assignment.sh
## This all 10 things is done in assignment.R as well as assignment.sh
Download the file FB_Dataset.csv.zip from the link above. Use a Unix shell to
manipulate the file and answer the following questions.
1) Decompress the file. How big is it?
2) What delimiter is used to separate the columns in the file and how many
columns are there?
3) The 2nd column is the unique identifier for a Facebook post. Print out the name
of other columns in the output?
4) How many unique pages are there?
5) What is the date range for Facebook posts in this file? (Assume that the data is
in order)
6) When was the first mention in the file regarding “Italian Dishes” and what was
the post name?
7) How many times is “Donald Trump” mentioned in the file? How did you find
this? (Do not ignore the case, i.e., lower/upper case)
8) What about “Barack Obama”? Who is more popular on Facebook, Obama or
Trump? (Do not ignore the case)
9) Select the posts where “Trump” (Ignore the case) is mentioned in the post
content and number of likes for those posts are greater than 100. And generate
a new file with post_id and sorted like_count and name it “trump.txt”. (You need
to add a screenshot of the first 5 rows and the column headers in your report).
10) Find the total number of love_count and angry_count for “Donald
Trump” and “Barack Obama” separately. Who has more positive feeling among
people?

## taskB.R
we want to look at a specific content type that
influences engagement on Facebook. To make this task easier, we will
specifically look at the number of comments posted against each of the post
type (event, link, photo, status and video) for “fox-news”.
A. Draw a boxplot to show the distribution of comments made against
each type of post (event, link, photo, status and video) created by “foxnews”.
What can you infer from this plot? Which is the most engaging
post type?
B. You may have noticed that the presence of outliers affects the
readability and interpretation of the data in the box plot. Redraw the
boxplot by filtering out values (comments_count) greater than 10,000.
C. Which type of post (event, link, photo, status or video) has on average
been most effective for “fox-news”. In other words, which post_type has
the highest median comment count.
