setwd("/Users/desktop")
all<-read.table("1.txt",header=TRUE,sep="\t")
group<-as.factor(all[,1])
time<-as.factor(all[,2])
library(ggplot2)
p <- ggplot(all,aes(x=Diet,y=Value))+geom_boxplot(aes(fill= Time),outlier.colour="black",alpha=0.6,width=0.4)+scale_fill_manual(values =  c("#d0d3dc","#a2a9b9","#738399","#495d7b", "#1b365f")) +theme_classic2()
p

