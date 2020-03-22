#' Bootstrap boot outfit.mnsq Function
#'
#' This function calculates bootstrap item outfit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq fit statistis
#'
#' @examples
#'    #Not run
#'    #boot.outfit(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

boot.outfit <- function(object){

  boot.fit<- boot::boot(data = object,statistic = boot.out,R=1000)

  return(boot.fit)
}




