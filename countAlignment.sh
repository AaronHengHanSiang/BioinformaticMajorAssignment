#!/bin/bash
BAMDIR=~/MajorProjectFastq
COUNTDIR=~/MajorProjectFastq/counts
GTF=~/MajorProjectFastq/Arabidopsis_thaliana.TAIR10.37.gtf

# Find the entire list of files
BAMS=`find ${BAMDIR} -name "*fastq.bam" | tr '\n' ' '`

# Count all files in a single process
featureCounts \
  -Q 10 \
  -T 3 \
  -a ${GTF} \
  -o ${COUNTDIR}/counts.out ${BAMS}
