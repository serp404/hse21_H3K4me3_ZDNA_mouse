source('lib.R')

# if (!requireNamespace("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install("TxDb.Mmusculus.UCSC.mm10.knownGene")

library(ChIPseeker)
library(TxDb.Mmusculus.UCSC.mm10.knownGene)
library(clusterProfiler)

###

NAME <- 'H3K4me3_CH12.ZDNA.intersect'
BED_FN <- paste0(DATA_DIR, NAME, '.bed')

###

txdb <- TxDb.Mmusculus.UCSC.mm10.knownGene
peakAnno <- annotatePeak(BED_FN, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Mm.eg.db")

pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.annopie.pdf'))
plotAnnoPie(peakAnno)
dev.off()
