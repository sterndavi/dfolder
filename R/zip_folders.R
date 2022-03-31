# Zip folder

# This function zips all files in a vector of folders / Data frame column based on a regex pattern


require(zip)
require(glue)

zip_folders <- function(path_to_parent_folder, dfcol, pattern){

    unico <- unique(dfcol)

    len <- length(unico)


    for(n in 1:len){
        mycd <- getwd()

        setwd(glue("{path_to_parent_folder}/{unico[n]}"))

        files_to_zip <- list.files(pattern = pattern)

        zip::zipr(zipfile = glue("{unico[n]}.zip"),
                  files = files_to_zip)

        setwd(mycd)
    }
}
