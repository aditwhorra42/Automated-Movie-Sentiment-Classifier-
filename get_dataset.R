library(readr)
library(stringr)
library(dplyr)
library(tokenizers)


train_pos_files <- list.files(path = "train/pos")
train_neg_files <- list.files(path = "train/neg")
test_pos_files <- list.files(path = "test/pos")
test_neg_files <- list.files(path = "test/neg")

data <- data.frame(File_Name=character(),
                  Type= character(),
                  Class = character(),
                  Review=character(),
                  stringsAsFactors=FALSE)


for (file in train_pos_files){
  text <- read_file(str_replace(paste("train/pos/", file), " ", ""))
  data[nrow(data)+1,] <- c(file, "Train", "Positive", text)
}

for (file in train_neg_files){
  text <- read_file(str_replace(paste("train/neg/", file), " ", ""))
  data[nrow(data)+1,] <- c(file, "Train", "Negative", text)
}

# for (file in test_pos_files){
#   text <- read_file(str_replace(paste("test/pos/", file), " ", ""))
#   data[nrow(data)+1,] <- c(file, "Test", "Positive", text)
# }
# 
# for (file in test_neg_files){
#   text <- read_file(str_replace(paste("test/neg/", file), " ", ""))
#   data[nrow(data)+1,] <- c(file, "Test", "Negative", text)
# }

