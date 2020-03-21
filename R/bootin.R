#' Bootstrap boot infit.mnsq Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Statistics
#'
#' @examples
#'
#'    #boot.infit(data)
#'
#' @export
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#'


boot.infit <- function(data){

  boot.fit<- boot::boot(data = data,statistic = infit.mnsq,R=100)

  return(boot.fit)
 }




