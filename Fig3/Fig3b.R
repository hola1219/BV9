library(pheatmap)
library(RColorBrewer)
setwd("/Users/desktop")
all<-read.table("1.txt",header=T,sep="\t",row.names=1)
pheatmap(all,angle_col = 0,border="white",
         display_numbers = T, fontsize_number = 6, number_color="black",number_format="%.0f",
         cellwidth = 20,cellheight = 10,
         cluster_cols = F, cluster_rows = F, 
         color = colorRampPalette(c('#235483',"#E2E2E2","#CC6666"))(100))