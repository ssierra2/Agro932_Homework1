wright_fisher <- function(N=1000, A1=100, t=1000){
  p <- A1/(2*N)
  ### make a numeric vector to hold the results
  freq <- as.numeric();
  t=1000
  ### Use for loop to run over t generations
  for (i in 1:t){
    A1 <- rbinom(1, 2*N, p)
    p <- A1/(2*N)
    freq[i] <- p
  }
  return(freq)
}

#a<-wright_fisher()     # put result of wright_fisher() in a variable called a
#length(which(a==0))    # count number elements in a = 0"

