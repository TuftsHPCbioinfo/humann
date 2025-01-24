FROM tuftsttsrt/miniforge

RUN conda install -c bioconda metaphlan==4.1.1 humann
