rm(list=ls())
setwd("/Users/olaaaa/desktop")
data <- read.delim("1.txt",
                   header=T, 
                   row.names=1, 
                   sep="\t",
                   stringsAsFactors = FALSE,
                   check.names = FALSE)
# wide to long
library(tidyr)
dt_plot <- gather(data, time, value,-sample)
head(dt_plot)
# calculate grouped medians
median =  data.frame(time =  paste0('time',1:5) ,
                     median = tapply(dt_plot$value, dt_plot$time, median) )
head(median)
## plot
library(ggplot2)
library(ggbeeswarm)
p = ggplot(dt_plot,aes(time,value))+
  geom_boxplot()+
  geom_beeswarm(shape = 21,color = '#A987BC',fill = '#A987BC',
                size = 3.5,cex = 1.5,
                stroke = 0.6,alpha = 0.8)+
  geom_line(data = median,
            mapping = aes(x = time, y = median, group=1),
            color="black",linetype = 'longdash',size = 1.5)+
  theme_classic()+
  labs(x = "Time", y = "Relative abundance")+scale_y_continuous(limits = c(0, 4))
p

