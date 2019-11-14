set.seed(12345)  #so we always draw the same numbers

population_mean = 100
population_standard_deviation = 15

sample_size = 625

my_sample = rnorm(sample_size,
                  population_mean,
                  population_standard_deviation)

number_of_bootstrap_samples = 10000

bootstrap_means = rep(NA,number_of_bootstrap_samples)

for (i in 1:number_of_bootstrap_samples){
  bootstrap_sample = sample(my_sample,
                            sample_size,replace=TRUE)
  bootstrap_means[i] = mean(bootstrap_sample)
}

mean(bootstrap_means)
sd(bootstrap_means)
quantile(bootstrap_means,c(0.025,0.975))

