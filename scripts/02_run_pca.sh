#!/bin/bash
cd data/reference
plink2 --vcf 1kg_chr22.vcf.gz --maf 0.05 --geno 0.05 --mind 0.1 \
       --max-alleles 2 --make-bed --out 1kg_chr22_filtered --allow-extra-chr
plink2 --bfile 1kg_chr22_filtered --pca 10 --out 1kg_chr22_pca --allow-extra-chr
