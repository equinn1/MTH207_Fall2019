tosses = 50

results = rbinom(tosses,1,0.5)  #generate simulated coin tosses
table(results)

sum(results)/tosses

abs(.5-sum(results)/tosses)
