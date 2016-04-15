library(tm)
library(dplyr)


path_to_transcripts <- 'raw'
path_to_clean_dir <- 'clean'

take_every_nth_element <- function(vec, n){
	newvec <- vec[seq.int(as.integer(n), length(vec), as.integer(n))]
	return(newvec)
}

make_bag_of_words <- function(path){
	bag_of_words <- readLines(path) %>%
	  take_every_nth_element(3) %>%
		strsplit(" ") %>%
	  unlist() %>%
		tolower()
	return(bag_of_words)
}

concat_words <- function(path){
	one_line <- make_bag_of_words(path) %>%
	  paste(collapse=" ")
	return(one_line)
}


strip_and_write <- function(filename){
	path <- paste(path_to_transcripts, filename, sep='/')
	one_line <- concat_words(path)

	root_name <- strsplit(filename, "\\.")[[1]][1] 
	clean_name <- paste(root_name, "clean.txt", sep="-")
	clean_file_path <- paste(path_to_clean_dir, clean_name, sep='/')
	fileConn <- file(clean_file_path)
	writeLines(one_line, fileConn)
	close(fileConn)
}


files <- dir(path_to_transcripts)

for(f in files){
	strip_and_write(f)
}

