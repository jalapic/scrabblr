#' Determine frequency of open bonus squares
#'
#' @param m a matrix of scrabble plays with notation
#' @return a dataframe of open bonus squares
#' @examples
#' bonus_squares(scrab2)
#' @export


bonus_squares <- function(m){
  tws  <- sum(nchar(gsub( "[^\\=]", "", m)  ))
  dws  <- sum(nchar(gsub( "[^\\-]", "", m)  ))
  dls  <- sum(nchar(gsub( "[^\\']", "", m)  ))
  tls  <- sum(nchar(gsub( "[^\\\"]", "", m)  ))
  return(data.frame(tws,dws,tls,dls))
}

