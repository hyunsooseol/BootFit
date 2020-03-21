#' Bootstrap boot outfit.mnsq CI Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: print Item Outfit.mnsq CI statistis
#'
#' @examples
#'    #Not run
#'    #outfit.conf(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

outfit.mnsq<- function(data,indices){
  data = data[indices,]

  # estimate Rasch model
  Rasch <- tam.mml(resp=data)
  # item fit
  fit <- msq.itemfit(Rasch)
  outfit<- fit[[1]][,3]

}

boot.outfit <- function(data){

  boot.fit<- boot(data = data,statistic = outfit.mnsq,
                  R=100)


}

outfit.confi <- function(data) {

  d <- boot.fit[[2]]

  for (i in 1:ncol(d)) {

    # bootstrap confidence interval and histogram

    outfit.ci <- boot.ci(boot.outfit, index = i, type = "basic")

    ci <- outfit.ci[[4]][, 4:5] # lower and upper 95 CI
    print(ci)
  }
return(ci)
}

