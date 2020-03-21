#' Bootstrap boot infit.mnsq CI Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: print Bootstrap Item Outfit.mnsq CI statistis
#'
#' @examples
#'    #Not run
#'    #infit.conf(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

infit.confi <- function(data) {


  for (i in 1:ncol(data)) {

  # bootstrap confidence interval

    infit.ci <- boot::boot.ci(boot.infit, index = i, type = "basic")

    ci <- infit.ci[[4]][, 4:5] # lower and upper 95 CI
    print(ci)
  }
}

