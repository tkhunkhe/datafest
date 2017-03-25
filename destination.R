library(ggplot2)
dest <- read.table('dest.txt', sep="\t", header = T, quote = "")
data_sample <- read.table('data.1.percent.txt', sep="\t", header = T, quote = "")

merged_data <- merge(dest, data_sample, by = 'srch_destination_id')

popular = as.matrix(dest[,7:dim(dest)[2]])
rnames <- Dest$srch_destination_name
rownames(popular) <- rnames

Dest_hm <- heatmap(popular[0:10,0:4], Rowv = NA, Colv = NA, col = cm.colors(250), 
                   scale = "column")