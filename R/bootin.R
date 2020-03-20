#' Bootstrap boot infit.mnsq Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq fit statistis
#'
#' @examples
#'    #Not run
#'    #boot.infit(data)
#'
#' @export
#' @importFrom boot boot boot.ci
#'


#boot function using boot package

boot.infit <- function(data){

  boot.fit<- boot(data = data,statistic = infit.mnsq,R=100)

  return(boot.fit)
}




