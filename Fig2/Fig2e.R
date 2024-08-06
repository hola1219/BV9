setwd("/Users/Desktop/")
all<-read.table("test.txt",header=TRUE,sep="\t",row.names=1)
library(ggplot2)
library(ggridges)
library(RColorBrewer)
P <- ggplot(all, aes(x = Value, y = Bray_Curtis_distances, fill = Bray_Curtis_distances, height = ..density..)) + geom_density_ridges(scale = 3,rel_min_height = 0,alpha=0.8
) + scale_fill_brewer(palette = 17) + coord_cartesian(clip = "off") +theme_ridges() + theme(legend.position = "Bray-Curtis distances") + scale_x_continuous(limits = c(0, 1))
P
