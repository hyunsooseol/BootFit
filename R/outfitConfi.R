#' Bootstrap outfit.mnsq CI Function
#'
#' This function calculates bootstrap 95% Confidence Interval
#' of outfit statistics using 'boot'package
#'
#' @param data: Data Frame
#'
#' @return: bootstrap 95% Confidence Interval  of outfit statistics
#'
#' @examples
#'    #Not run
#'    #outfit.conf(object)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot.ci
#' @export


outfit.conf <- function(object){

  boot.outfit<- boot.outfit(object)
  result=c()

   for (i in 1:ncol(object)) {

    ci=boot::boot.ci(boot.outfit, index = i,
                     type = "basic")
    result=c(result, ci)

  }
  return(result)
}


