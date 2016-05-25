library(ggplot2)
library(readr)
library(dotwhisker)
set.seed(100L)

myData=read_csv("w_logret_3automanu.csv",col_names=FALSE)

names(myData)=c("Toyota","Ford","GM")

myFit1=lm(GM~.,data=myData)
par(mfrow=c(2,3))
plot(myFit1,which=1:6,ask=FALSE,id.n=3)
#the labelled point of the first three and the last three are different

# : and * is different
?formula

myFit2=update(myFit,.~.-1)

dwplot(list(myFit1,myFit2))+
    theme_bw()+
    geom_vline(xintercept = 0,colour="green",linetype=2)
confint(myFit1)

tmp= 1:709 %in% 402
myFit3=update(myFit,subset=!tmp)
plot(myFit3,which=1:6,ask=FALSE,id.n=3)
dwplot(list(myFit1,myFit3))+
    theme_bw()+
    geom_vline(xintercept = 0,colour="green",linetype=2)


tmp=1:709 %in% c(402,
                 334,644)

myFit4=update(myFit,subset=!tmp)
plot(myFit4,which=1:6,ask=FALSE,id.n=3)
dwplot(list(myFit3,myFit4))+
    theme_bw()+
    geom_vline(xintercept = 0,colour="green",linetype=2)

# the wrong way:
myData=read.csv("w_logret_3automanu.csv",header = FALSE)
names(myData)=c("Toyota","Ford","GM")
myData1=myData[-402,]
wrong1=lm(GM~.,data=myData1)
plot(wrong1,which=1:6,ask=FALSE)

# now the 3 biggest cook's D is 334,643,311. But
wrong1$residuals[c(334,643,311)]
wrong1$residuals[c(335,644,311)]

# it is because of the behavior of rownames of myData1:

# how to solve it?

# first method: rename the row:
rownames(myData1)=1:nrow(myData1)

# second method: use read_csv as we did (recommand):
myData=read_csv("w_logret_3automanu.csv",col_names=FALSE)
names(myData)=c("Toyota","Ford","GM")
myData1=myData[-402,]
right1=lm(GM~.,data=myData1)

right1$residuals[c(334,643,311)]
