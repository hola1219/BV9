library(pheatmap)
setwd("/Users/desktop")
all<-read.table("1.txt",header=TRUE,sep="\t",row.names=1)
pheatmap(all,angle_col = 0,border="white",
         display_numbers = T, fontsize_number = 5, number_color="#8B0000",number_format="%.0f",
         cellwidth = 20,cellheight = 10, 
         cluster_cols = F, cluster_rows = F, 
         color = colorRampPalette(c("white", "white"))(50))