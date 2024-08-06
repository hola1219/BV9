library(ggplot2)
setwd("/Users/Desktop")
aa <- read.table("Fig2c.txt",header = T,sep = "\t")
p<-ggplot(data=aa, aes(x=Time,y=Shannon,colour=Sub))+geom_point(aes(colour = Sub),size=3,alpha=0.5)+theme_bw()+scale_x_continuous(breaks=seq(0, 28, 7))+
  geom_smooth(aes(color = Sub),level = 0.5,cex=1,method = "loess")+theme(panel.grid=element_blank())+scale_color_manual(values = c("#6697b3","#75161a","#003e28","#fceed6"))
p1 <- p +  
  coord_cartesian(clip = 'off',ylim = c(0,3))
p1




