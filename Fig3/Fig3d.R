setwd("/Users/desktop")
library(ggplot2)
library(ggpubr)

df<- read.csv("test.txt", header = TRUE, sep = "\t")
head(df)

ggplot(df, aes(x=X, y=Y)) +
  geom_point(shape=1)     

ggplot(df, aes(x=X, y=Y)) +
  geom_point(shape=1) +   
  geom_smooth(method=lm) + 
  theme_bw()+
  stat_cor(method = "spearman")

pp = ggplot(df, aes(x=X, y=Y)) +
  geom_smooth(method=lm,color='grey',fill="grey",alpha=0.1)+ 
  geom_point(shape=21,size=5,color="black",fill="black") +   
  theme_bw()+ 
  theme(panel.grid =element_blank())+   
  #theme(panel.border = element_blank()) +   
  theme(axis.line = element_line(colour = "black"))+   
  aes(color = "black")+ 
  theme(legend.position = "none")+ 
  stat_cor(method = "spearman",colour = 'black')+  
  theme(axis.title = element_text(face = NULL)) 
pp
pp+x11(width=5,height=4)

