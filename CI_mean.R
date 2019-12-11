set.seed(12345)


#read.csv("my_data.csv")    #we would use this to read a file
                            # (if we had one)
                            #but we will use simulated data

sample_size = 120           #number of data points to simulate

population_mean = 100       #population mean for simulated data

population_std = 15         #population standard deviation

y = rnorm(sample_size,population_mean,population_std)   #generate the data

boxplot(y)                  #show a boxplot of the simulated data

df = data.frame(y)

write.csv(df,file="CI_mean.csv")        #save the dataframe in a file

t.test(y,conf.level = 0.95)   #compute a 95% confidence interval
