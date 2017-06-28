source('configuration.R')

zip_files <- list.files(path = INSTACART_DATA_DIR, pattern = "*.zip")
<<<<<<< HEAD
=======
print(zip_files)
print(DATA_DIR)
>>>>>>> d83f7dce0d7297ec3a62b36575db71b23423dd86
for (ifile in zip_files) {
  unzip(file.path(INSTACART_DATA_DIR, ifile), exdir = DATA_DIR)
}

## https://www.kaggle.com/hugomathien/soccer
ffile <- list.files(path = FOOTBALL_DATA_DIR, pattern = "*.zip")[1]
unzip(file.path(FOOTBALL_DATA_DIR, ffile), exdir = DATA_DIR)
