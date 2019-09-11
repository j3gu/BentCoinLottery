# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

# Small edit! from class 1!
num_of_flips <- 10
num_of_coins_per_flip<-1
num_of_tickets<-100
flip_coins<-function(flips, coins){
  arr_of_flips <- array(0,flips)
    for (i in 1:flips){
        arr_of_flips[i] <- if (runif(coins) < 0.1) 1 else 0
    }
  return(arr_of_flips)
}

for (j in 1:num_of_tickets){
  coin_flips<- flip_coins(num_of_flips, num_of_coins_per_flip)
  print(coin_flips)
}
