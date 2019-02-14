#' Insert less or equal than (ideal on keyboard without access)

#'@export
InsertLeq <- function(){
  rstudioapi::insertText(" < ")
}

#'Insert Greather or equal than (ideal on keyboards without access)
#'
#'@export
InsertGeq <- function(){
  rstudioapi::insertText(" > ")
}

#'Insert the magrittr compound assignment pipe-operator
#'
#'@export
InsertCompound <- function(){
  rstudioapi::insertText(" %<>% ")
}

#'Insert the magrittr exposition pipe-operator
#'
#'@export
InsertExposition <- function(){
  rstudioapi::insertText(" %$% ")
}



