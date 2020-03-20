#' Bootstrap boot infit.mnsq CI Function
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

infit.conf <- function(data){

        d <- boot.infit[[2]]

     for (i in 1:ncol(d)) {

    # bootstrap 95% confidence interval

    infit.ci<- boot::boot.ci(boot.infit, index =i, type = "basic")

    ci<- infit.ci[[4]][,4:5] # lower and upper 95% CI
    print(ci)
  }
}



