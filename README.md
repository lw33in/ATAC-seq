# ATAC-seq

## ATAC-seq Analysis using Nextflow
   * example_atacseq_config.csv:
  ```
  sample,fastq_1,fastq_2,replicate
  ctrl_rep1,ctrl_rep1_S1_L002_R1_001.fastq.gz,ctrl_rep1_S1_L002_R2_001.fastq.gz,1
  ctrl_rep2,ctrl_rep2_S1_L003_R1_001.fastq.gz,ctrl_rep2_S1_L003_R2_001.fastq.gz,2
  ctrl_rep3,ctrl_rep3_S1_L004_R1_001.fastq.gz,ctrl_rep3_S1_L004_R2_001.fastq.gz,3
  ```
   * General comman line:
  ```
  nextflow run nf-core/atacseq --input example_atacseq_config.csv -profile docker \
  -r 3.12.0 --outdir output_dir --igenomes_ignore --fasta refdata-gex-GRCh38-2020-A/fasta/genome.fa \
  --gtf refdata-gex-GRCh38-2020-A/genes/genes.gtf --macs_gsize ce --read_length 150
  ```
  > Note If you are new to Nextflow and nf-core, please refer to [this page](https://nf-co.re/docs/usage/installation) on how to set-up Nextflow. Make sure to [test your setup](https://nf-co.re/docs/usage/introduction#how-to-run-a-pipeline) with -profile test before running the workflow on actual data.

- **Reference Genome**:
    * Gencode v32 reference genome
    * Command line download: <code>wget https://cf.10xgenomics.com/supp/cell-exp/refdata-gex-GRCh38-2020-A.tar.gz</code>
    * Direct download: [Human reference (GRCh38) dataset required for Cell Ranger](https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest/)
