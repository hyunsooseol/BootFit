#' Bootstrap boot infit.mnsq Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' for the Rasch unidimensional model.
#'
#' @param object: Data frame
#'
#' @return: Bootstrap t Statistics. Also see 'boot' package
#'
#' @examples
#'
#'    #boot.infit(object)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export


boot.infit <- function(object){

  boot.fit<- boot::boot(data = object,statistic = boot.in,R=1000)

  return(boot.fit)
 }




