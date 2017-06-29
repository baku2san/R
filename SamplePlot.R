
title<-"title"
ylim=c(-50,50)
xlim=c(0,1000)
xColumn<-"CH5_PlsA"
x1A<-x1[,"CH5_PlsA"]
x1X<-x1[,"No.%0n"]
#par(mfrow=c(2,2))
plot(x1$CH5_PlsA,main=title,col="green ",type="l", axes=F,ylab="", xlab="")
axis(4)
par(new=T)
plot(x1$CH6_PlsB,main=title,col="blue ",type="l", axes=F,ylab="", xlab="")
par(new=T)
plot(x=x1$`No.%0n`,y=x1$CH3_AccY,main="",ylim=ylim,col="red ",type="l",ylab="")
par(new=T,xpd=T)
plot(x1$CH4_AccZ,main="",ylim=ylim,col="orange",type="l",ylab="", axes=F, xlab="")
legend(-20,-72,legend=c("AccY","AccZ"),ncol=2,lty=1:1,col=c("red","orange")) # pch=5 plotSymbol
legend(150,-72,legend=c("A","B"),ncol=2,lty=1:1,col=c("green","blue"))
