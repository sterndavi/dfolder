# Remove files_folder

# This function deletes all files in a vector of folders / Data frame column based on a regex pattern

require(glue)

remove_files_folders <- function(path_to_parent_folder, dfcol, pattern){
    unico <- unique(dfcol)

    len <- length(unico)


    for(n in 1:len){
        mycd <- getwd()

        setwd(glue("{path_to_parent_folder}/{unico[n]}"))

        files_to_delete <- list.files(pattern = pattern) #pattern can be regex

        delete_files <- file.remove(files_to_delete)

        setwd(mycd)
    }
}
