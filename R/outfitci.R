#' Bootstrap boot outfit.mnsq CI Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq CI statistis
#'
#' @examples
#'    #Not run
#'    #boot.infit(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

outfit.conf <- function(data){

   d <- boot.outfit[[2]]

  for (i in 1:ncol(d)) {

    # bootstrap 95% confidence interval

    outfit.ci<- boot::boot.ci(boot.outfit, index =i, type = "basic")

    ci<- outfit.ci[[4]][,4:5] # lower and upper 95% CI
    print(ci)
  }
}
