set.seed(12345)  #so we always draw the same numbers

population_mean = 100
population_standard_deviation = 15

sample_size = 100

number_of_samples = 10000

sample_means = rep(NA,number_of_samples)

for (i in 1:number_of_samples){
  my_sample = rnorm(sample_size,
                    population_mean,
                    population_standard_deviation)
  sample_means[i] = mean(my_sample)
}

mean(sample_means)
sd(sample_means)
quantile(sample_means,c(0.025,0.975))

