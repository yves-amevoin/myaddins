#detect empty columns
#
empty_columns <- function(.data){
  #return true if all is empty
  !(all(is.na(.data))|all(.data == ""))
}

#'Filtering empty columns
#'
#'Filtering on empty columns
#'
#'@param .data Character vector, data frame or list to filter in.
#'@return An object of the same type of `.data`, but without elements that are all
#'    missing
#'@examples
#'tracking_vector <- c(NA, 0)
#'filter_empty_columns(tracking_vector)
#'data(mtcars)
#'mtcars$newempty <- NA
#'filter_empty_columns(mtcars)
#'mtcars$another_new <- sample(c(NA, ""), nrow(mtcars), replace = TRUE)
#'filter_empty_columns(mtcars)
#'@export
filter_empty_columns <- function(.data){
  #that its
  Filter(empty_columns, .data)
}
