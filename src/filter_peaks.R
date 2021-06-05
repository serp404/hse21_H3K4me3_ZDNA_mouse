source('lib.R')
###

NAME <- 'H3K4me3_CH12.ENCFF150KSB.mm10'
LEN_TRESHOLD <- 5000

###

bed_df <- read.delim(paste0(DATA_DIR, NAME, '.bed'), as.is = TRUE, header = FALSE)
colnames(bed_df) <- c('chrom', 'start', 'end', 'name', 'score')
bed_df$len <- bed_df$end - bed_df$start

# Remove long peaks
bed_df <- bed_df %>%
  arrange(-len) %>%
  filter(len < LEN_TRESHOLD)
  
ggplot(bed_df) +
  aes(x = len) +
  geom_histogram() +
  ggtitle(NAME, subtitle = sprintf('Number of peaks = %s', nrow(bed_df))) +
  theme_bw()
ggsave(paste0('filter_peaks.', NAME, '.filtered.hist.pdf'), path = OUT_DIR)

bed_df %>%
  select(-len) %>%
  write.table(file=paste0(DATA_DIR, NAME ,'.filtered.bed'),
            col.names = FALSE, row.names = FALSE, sep = '\t', quote = FALSE)
