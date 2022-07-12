#Option 1
setwd <- 'C:/Users/Rachel.King/Desktop/HES 2010 Stirling/DSM/'
my_path <- 'C:/Users/Rachel.King/Desktop/HES 2010 Stirling/DSM/'

#view my_path
my_path

#designate the project folder name without the remaining filepath
folder_name <- unlist(strsplit(my_path,"Desktop/"))[length(unlist(strsplit(my_path,"Desktop/")))]

#remove the subfolder name from the remianing filepath
folder_name <- substr(folder_name,1,nchar(folder_name)-5)

#view project folder_name with unnecessary sections removed e.g rest of filepath and subfolder
folder_name

#create a list of the files present within the project folder
file_names_old <- list.files(my_path)

#remove the tile type characters from the old filename
file_names_old_v2 <- substr(file_names_old,1,nchar(file_names_old)-4)

#view the original file names with unnecessary sections removed in a list
file_names_old_v2

#desginate the file type in relation to the folder name
file_type <- unlist(strsplit(my_path,"/"))[length(unlist(strsplit(my_path,"/")))]

#view file type designated by the folder name
file_type

file_names_new <- paste0(folder_name,"_",
                         file_names_old_v2,"_",
			                   file_type,
                         ".tif")

#view newly created file names in a list
file_names_new 

#action the renaming of the files to their new naming convention
file.rename(paste0(my_path, file_names_old),
            paste0(my_path, file_names_new))

