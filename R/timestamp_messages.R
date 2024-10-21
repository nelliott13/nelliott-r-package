# Collection of basic functions that add timestamps to strings and messages

#' Add a timestamp to a string
#'
#' @param ... Zero or more objects which can be coerced to character (and which are pasted together with no separator)
#'
#' @return A timestamped character vector.
#' @export
#'
#' @examples
add_ts <- function(...) {
  
  paste0("[", format(Sys.time(), "%Y-%m-%d %H:%m:%S"), "] - ", ...)
  
}

#' Generate a timestamped diagnostic message
#' 
#' @description
#' A wrapper for the base 'message' function that adds a timestamp to the beginning of the message.
#'
#' @param ... Zero or more objects which can be coerced to character 
#' (and which are pasted together with no separator)
#'
#' @return no return; sends a diagnostic message to stderr.
#' @export
#'
#' @examples
message_ts <- function(...) {
  
  message(add_ts(...))
  
}

#' Print a timestamped message
#'
#' @description
#' A wrapper for the base 'message' function that adds a timestamp to the beginning of the message.
#'
#' @param ... Zero or more objects which can be coerced to character 
#' (and which are pasted together with no separator)
#'
#' @return A timestamped character vector.
#' @export
#'
#' @examples
print_ts <- function(...) {
  
  print(add_ts(...))
  
}


