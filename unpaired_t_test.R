set.seed(12345)


#read.csv("CI_mean.csv")    #we would use this to read a file
                            # (if we had one)
                            #but we will use simulated data

sample_size1 = 120          #number of data points to simulate - sample 1
sample_size2 = 100          #number of data points - sample 2

population_mean1 = 100      #population mean for simulated sample 1
population_mean2 = 115      #population mean for simulated sample 2

population_std = 50         #common population standard deviation

s1 = rnorm(sample_size1,population_mean1,population_std)   #generate the data
s2 = rnorm(sample_size2,population_mean2,population_std)

boxplot(s1)                  #show a boxplot of the simulated data

boxplot(s2)


t.test(s1,y=s2,conf.level = 0.95)   #compute a 95% confidence interval

