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
#' @importFrom boot boot boot.ci
#' @export


boot.infit <- function(data){

  boot.fit<- boot(data = data,statistic = infit.mnsq,R=100)

  return(boot.fit)
 }




