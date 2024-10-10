export NXF_WORK=/home/ubuntu/ems_workspace/all_samples_10M/EM-seq/work

NXF_VER=22.10.4 nextflow run em-seq.nf --genome /home/ubuntu/ems_workspace/EM-seq/genome/grch38_core_bs_controls.fa --flowcell 22KKFFLT3 --fastq_glob '/home/ubuntu/ems_workspace/fastq/downsample10M/*_R{1,2}.fastq.gz' -resume -with-report -with-trace --outdir ./output

# -with-dag flowchart.png 