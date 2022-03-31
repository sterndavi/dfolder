# Create Folders

# This function aims to create folders named after unique itens in a vector / Dataframe

require(glue)

create_folders <- function(path_to_parent_folder,dfcol){
    len <- length(unique(dfcol))

    Sys.chmod(glue("{path_to_parent_folder}/{dfcol}"))

    unico <- unique(dfcol)

    for(n in 1:len){
        dir.create(glue::glue("{path_to_parent_folder}/{unico[n]}"))

    }

}
