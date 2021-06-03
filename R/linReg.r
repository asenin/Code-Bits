#Linear regression script

#Using the cars dataset in R

args<-commandArgs(TRUE)


head(cars, 10)

varModel <- lm(dist~speed, data = cars)

#get attributes
attributes(varModel)

varModel

#value=-17.58 + 3.83*select(cars, speed)


predict(varModel, data.frame(x = 3))


plot(dist~speed, data = cars,
     xlab = "speed",
     ylab = "dist",
     main = "speed-data"
)

abline(varModel, col = "red", lwd=3)





#####Non working redundant test

##import data from csv through argument
myData=read.csv(args[1], header=T)
head(myData, 10)
myModel <- lm(y~x, data = myData)

#plot and show data
plot(y~x, data = cars,
     xlab = "x name here",
     ylab = "y name here",
     main = "y-x"
)

abline(myModel, col = "red", lwd=3)

##usefull stuff


# Show attributes 
attributes(myModel) 

# Show coefficients of model
myModel$coefficients

#predict value
predict(myModel, data.frame(x = 0))
