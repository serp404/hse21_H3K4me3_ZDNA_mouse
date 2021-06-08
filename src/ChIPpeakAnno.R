source('lib.R')

###

library(ChIPpeakAnno)
library(TxDb.Mmusculus.UCSC.mm10.knownGene)
library(org.Mm.eg.db)

###


peaks <- toGRanges(paste0(DATA_DIR, 'H3K4me3_CH12.ZDNA.intersect.bed'), format="BED")
annoData <- toGRanges(TxDb.Mmusculus.UCSC.mm10.knownGene)

anno <- annotatePeakInBatch(peaks, AnnotationData=annoData, 
                            output="overlapping", 
                            FeatureLocForDistance="TSS",
                            bindingRegion=c(-2000, 300))
data.frame(anno) %>% head()

anno$symbol <- xget(anno$feature, org.Mm.egSYMBOL)
data.frame(anno) %>% head()

anno_df <- data.frame(anno)
write.table(anno_df, file=paste0(DATA_DIR, 'H3K4me3_CH12.ZDNA.genes.txt'),
            col.names = TRUE, row.names = FALSE, sep = '\t', quote = FALSE)

uniq_genes_df <- unique(anno_df['symbol'])
write.table(uniq_genes_df, file=paste0(DATA_DIR, 'H3K4me3_CH12.ZDNA.genes_uniq.txt'),
            col.names = FALSE, row.names = FALSE, sep = '\t', quote = FALSE)
