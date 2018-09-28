
#' @title mocking.spongebob
#' @name mocking.spongebob
#' @author Jennifer An
#' @param x string
#' @example mocking.spongebob("mocking spongebob")
#' @export
mocking.spongebob <- function(x) {
  y <- strsplit(x, split="")
  y <- unlist(y)
  y <- data.frame(x=y)
  y$flag <- sample(1:2, nrow(y), replace=T)
  y$x_new <- NA
  y[y$flag==1,]$x_new <- tolower(y[y$flag==1,]$x)
  y[y$flag==2,]$x_new <- toupper(y[y$flag==2,]$x)
  return(paste0(y$x_new, collapse=""))
}


