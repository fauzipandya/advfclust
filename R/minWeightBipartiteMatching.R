#' Matching label
#' @description Matching label of 2 cluster via Hungary Algorithm
#' @param x an fuzzycluster object
#' @param y an fuzzy cluster object
#' @import clue

minWeightBipartiteMatching <- function(x, y) {
  if(!is(x,"fuzzycluster")||!is(y,"fuzzycluster"))
    stop("Both x and y must fuzzy clustering object")
  nA <- nrow(member(x))  # number of instances in x
  nB <- nrow(member(y))  # number of instances in y
  if ( nA != nB) {
    stop("number of cluster or number of instances do not match")
  }
  dissmilarity<-t(member(x))%*%member(y)
  dissmilarity<-10000-dissmilarity

  # optimization
  result <- solve_LSAP(dissmilarity, maximum = FALSE)
  return(result)
}
