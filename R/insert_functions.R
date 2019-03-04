#' Insert less or equal than (ideal on keyboard without access)

#'@export
InsertLeq <- function(){
  rstudioapi::insertText(text = " < ")
}

#'Insert Greather or equal than (ideal on keyboards without access)
#'
#'@export
InsertGeq <- function(){
  rstudioapi::insertText(text = " > ")
}

#'Insert the magrittr compound assignment pipe-operator
#'
#'@export
InsertCompound <- function(){
  rstudioapi::insertText(text = " %<>% ")
}

#'Insert the magrittr exposition pipe-operator
#'
#'@export
InsertExposition <- function(){
  rstudioapi::insertText(text = " %$% ")
}

#'Insert the filter empty column and return back function
#'@export
InsertFiltering <- function(){
  rstudioapi::insertText( text = " myaddins::fec() ")
}

#'Insert the cnr (custom name repair) function when loading a data frame from tibble
#'@export
InsertCustomNames <- function(){
  rstudioapi::insertText( text = " myaddins::cnr ")
}


