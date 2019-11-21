rolls = 50

outcomes = c(1,2,3,4,5,6)

die1 = sample(outcomes,rolls,replace=TRUE)  #generate simulated die roll
die2 = sample(outcomes,rolls,replace=TRUE)  #generate simulated die roll

results = die1+die2
table(results)

hist(results)
