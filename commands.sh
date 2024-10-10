export NXF_WORK=/home/ubuntu/ems_workspace/all_samples_10M/EM-seq/work/mbias_samples

NXF_VER=22.10.4 nextflow run em-seq.nf --genome /home/ubuntu/ems_workspace/EM-seq/genome/grch38_core_bs_controls.fa --flowcell 22KKFFLT3 --fastq_glob '/home/ubuntu/fastq_data/datahub-ngs-datasets/methylseq/Jerry_2405/01_input/mbias/*_R{1,2}_001.fastq.gz' -resume -with-report -with-trace --outdir ./output/mbias_samples
