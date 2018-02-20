is.installed <- function(mypkg){
  is.element(mypkg, installed.packages()[,1])
} 


pkgTest <- function(x)
{
  if (!require(x,character.only = TRUE))
  {
    install.packages(x,dep=TRUE)
    if(!require(x,character.only = TRUE)) stop("Package not found")
  }
}

envop.config.file <- "conf/envop-personal-config.R"
if (file.exists(envop.config.file)){
  source(envop.config.file)
}

