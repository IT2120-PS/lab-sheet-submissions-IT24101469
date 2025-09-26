setwd("C:\\Users\\ASUS\\Desktop\\PS\\lab8")
data<-read.table("Exercise - LaptopsWeights.txt",header =TRUE)

##Q1
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popvar<-var(Weight.kg.)

##Q2
samples<-c()
n<-c()

for (i in 1:25) {
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

View(samples)

colnames(samples) = n


s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

##Q3
popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

samplemean <- mean(s.means)  # Mean of sample means
sdeviation <- sd(s.means)    # Standard deviation of sample means


# Standard error of the sample means
standard_error <- popsd / sqrt(6)


