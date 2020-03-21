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

infit.mnsq<- function(data,indices){

  data = data[indices,]

  # estimate Rasch model
  Rasch <- tam.mml(resp=data)
  # item fit
  fit <- msq.itemfit(Rasch)
  infit<- fit[[1]][,6]
 }

boot.infit <- function(data){

  boot.fit<- boot(data = data,statistic = infit.mnsq,
                  R=100)

}

infit.confi <- function(data) {

  d <- boot.fit[[2]]

  for (i in 1:ncol(d)) {

  # bootstrap confidence interval

    infit.ci <- boot.ci(boot.infit, index = i, type = "basic")

    ci <- infit.ci[[4]][, 4:5] # lower and upper 95 CI
    print(ci)
  }
return(ci)
}

