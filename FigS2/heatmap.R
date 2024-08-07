library(pheatmap)
library(RColorBrewer)
setwd("/Users/desktop")
all<-read.table("1.txt",header=T,sep="\t",row.names=1)
group<-as.factor(all[,1])
data<-all[,-1]
annotation<-data.frame(group) 
rownames(annotation)<-rownames(data)
pheatmap(t(data),annotation=annotation,border="gray", cellwidth=8,cellheight=8,fontsize_row=8,fontsize_col=8,cluster_rows=T,cluster_cols=F,filename="aa1.pdf",,color = colorRampPalette(c("white", "#3f7a96"))(50))
