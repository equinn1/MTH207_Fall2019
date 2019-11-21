tosses = 50

outcomes = c('H','T')

results = sample(outcomes,tosses,replace=TRUE)  #generate simulated coin tosses
table(results)

sum(results=='H')/tosses

abs(.5-sum(results=='H')/tosses)
