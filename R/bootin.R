#' Bootstrap boot infit.mnsq Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param object: the name of objectset
#'
#' @return: Bootstrap Statistics
#'
#' @examples
#'
#'    #boot.infit(object)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export


boot.infit <- function(object){

  boot.fit<- boot::boot(data = object,statistic = boot.in,R=100)

  return(boot.fit)
 }




