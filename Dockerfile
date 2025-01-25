FROM tuftsttsrt/miniforge

RUN conda install -c bioconda metaphlan==4.1.1 humann

RUN humann_config --update database_folders nucleotide /cluster/tufts/biocontainers/datasets/humann/3.9/chocophlan \ 
  && humann_config --update database_folders protein /cluster/tufts/biocontainers/datasets/humann/3.9/uniref \
  && humann_config --update database_folders utility_mapping /cluster/tufts/biocontainers/datasets/humann/3.9/utility_mapping 
