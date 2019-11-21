rolls = 50

outcomes = c(1,2,3,4,5,6)

results = sample(outcomes,rolls,replace=TRUE)  #generate simulated coin tosses
table(results)

hist(results)
