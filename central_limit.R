

sample_size = 15
p = .6

number_of_samples = 5000

sample_total = rep(NA,number_of_samples)

for (i in 1:number_of_samples){
  y = rbinom(sample_size,1,p)
  sample_total[i] = sum(y)
}

hist(sample_total)

hist(y)
