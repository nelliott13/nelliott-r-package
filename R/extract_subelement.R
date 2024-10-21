#' Extract subelement from list
#' 
#' @description
#' Extract the nth subelement from each item a list
#'
#' @param x A list.
#' @param n A numeric vector containing the indices of the element to extract. 
#' Must be of length 1 or the same length as x.
#'
#' @return A named vector containing the nth elements of each item in x.
#' @export
#'
#' @examples
extract_subelement <- function(x, n) {
  
  if (class(x) != "list") stop(add_ts("x must be a list"))
  if (!is.numeric(n)) stop(add_ts("n must be a numeric vector of integers"))
  
  if(length(n) == 1) {
    subelement <- sapply(x, `[[`, n)
  } else if (length(x) == length(n)) {
    subelement <- mapply(x, n, FUN = `[[`)
  } else {
    stop(add_ts("length of n must either be 1 or the length of x"))
  }
  return(subelement)
  
}
