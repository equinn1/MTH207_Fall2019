set.seed(123457)

sample_size1 = 120          #number of data points to simulate - sample 1
sample_size2 = 100          #number of data points - sample 2

population_mean1 = 100      #population mean for simulated sample 1
population_mean2 = 115      #population mean for simulated sample 2

population_std1 = 20        #population standard deviation
population_std2 = 22

y1 = rnorm(sample_size1,population_mean1,population_std1) 
y2 = rnorm(sample_size2,population_mean2,population_std2) #generate data

y = c(y1,y2)

subgroup = c(rep("group1",sample_size1),rep("group2",sample_size2))

df = data.frame(y,subgroup)

boxplot(y~subgroup,data=df)

diffmeans = mean(y1)-mean(y2)
diffmeans

nreps = 10000

diffs = rep(NA,nreps)

for (i in 1:nreps){
  y_shuffle = sample(y,length(y),replace=FALSE)
  mean1 = mean(y_shuffle[1:sample_size1])
  mean2 = mean(y_shuffle[(1+sample_size1):(length(y))])
  diffs[i] = mean1 - mean2
}

hist(diffs)

quantile(diffs,c(.005,.025,.5,.975,.995))

#see where the difference in the sample means 
# (diffmeans) falls on the histogram
