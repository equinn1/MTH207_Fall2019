set.seed(12345)

#read.csv("weight_gain.csv")                #we would use this to read a file
                                            # (if we had one)
                                            #but we will use simulated data

n_year = 100                                #number of students in each year

class_yr = c(rep("freshman",n_year),        #vector of class names
      rep("sophomore",n_year),rep("junior",n_year),rep("senior",n_year))

class_means = c(4.53,3.14,2.25,2.25)        #vector of class means

sigma = 4                                   #error standard deviation

weight_gain = rep(class_means,each=n_year)  + rnorm(length(class_yr),0,sigma)         #generate simulated data

boxplot(weight_gain ~ class_yr)             #show a boxplot of the simulated data

df = data.frame(weight_gain,class_yr)       #make a dataframe for the simulated data

write.csv(df,file="weight_gain.csv")        #save the dataframe in a file

wt_gain = aov(weight_gain ~ class_yr, data=df)   #run the ANOVA

summary(wt_gain)                            #show the ANOVA results

TukeyHSD(wt_gain)                           #follow-up test to see which classes differ
                                            #significant if lwr and upr have the same sign

#on my computer, with the random seed 12345, the results indicated that freshmen 
#were significantly different from the other three classes