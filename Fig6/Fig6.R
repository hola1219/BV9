library(ggplot2)
library(ggpubr)
setwd("/Users/desktop")
cor_data <- read.table("1.txt",header = T,sep = "\t")

cor_data_filtered <- cor_data[cor_data$Time != 0, ]

ggplot(data=cor_data_filtered, aes(x=BV9, y=PD,fill=Time))+
  geom_point(aes(color=Time),size=3,alpha=0.9)+
  geom_smooth(method = lm)+
  stat_cor(method="spearman")+ 
  facet_wrap(Group~Media,scales = "free")+
  theme_classic()

