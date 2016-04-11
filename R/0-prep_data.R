library(tm)
library(dplyr)

# Get raw data

path_to_transcripts <- 'raw'
path_to_clean_dir <- 'stripped'

make_bag_of_words <- function(path){
	raw_words <- readLines(path) %>%
		strsplit(" ")
	bag_of_words <- unlist(raw_words) %>%
		tolower()
	return(bag_of_words)
}

make_one_line <- function(path){
	bag <- make_bag_of_words(path)
	one_line <- paste(bag, collapse=" ")
	return(one_line)
}


strip_and_write <- function(filename){
	path <- paste(path_to_transcripts, filename, sep='/')
	bag <- make_bag_of_words(path)
	one_line <- make_one_line(path)

	fileConn<-file(paste(path_to_clean_dir, filename, sep='/'))
	writeLines(one_line, fileConn)
	close(fileConn)
}


files <- dir(path_to_transcripts)

for(f in files){
	strip_and_write(f)
}

