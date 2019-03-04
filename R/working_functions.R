#'Detect empty columns
#'
#'@param .data Character vector, data.frame or a list.
#'@return a logical, indicating empty data.
#'@export
empty_columns <- function(.data){
  #return true if all is empty
  !(all(is.na(.data))|all(.data == ""))
}

#'Filter empty columns
#'
#'Filter  empty columns
#'
#'@param .data Character vector, data frame or list to filter in.
#'@return An object of the same type of `.data`, but without elements that are all
#'    missing
#'@examples
#'tracking_vector <- c(NA, 0)
#'fec(tracking_vector)
#'data(mtcars)
#'mtcars$newempty <- NA
#'fec(mtcars)
#'mtcars$another_new <- sample(c(NA, ""), nrow(mtcars), replace = TRUE)
#'fec(mtcars)
#'@export
fec <- function(.data){
  #that its
  Filter(empty_columns, .data)
}

#'Creating a custom name repair function
#'
#'Personal custom name repair
#'
#'colnames are lowecase, spaces are replaced with `_`, and empty name columns
#'with "X". Column names are then made unique with the `make.unique` function.
#'
#'@param .character A character vector, colnames of data to be imported
#'@return A character vector, but with my correction specifications
#'
cnr <- function(.character){

  #changing the character to lower scale
  char <- tolower(.character)
  char <- gsub("\\s", "_", char)
  char <- iconv(char, from = "UTF-8", to = "ASCII//TRANSLIT")

  #managing the empty columns
  char[char == ""] <- "X"

  #unique names
  make.unique(char)
}
