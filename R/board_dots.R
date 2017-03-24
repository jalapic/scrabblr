#' Add dots to scrabble matrix
#'
#' @param m a matrix of scrabble plays
#' @return a matrix of scrabble plays with dots where no tiles
#' @examples
#' board_dots(scrab2)
#' @export

board_dots <- function(m){
m1=board_pretty(m)
m2=board_clean(m1)
m3=gsub(" ", ".", m2)
noquote(ifelse(m3=="", ".", m3))
}
