FROM nvcr.io/nvidia/pytorch:22.02-py3
COPY environment.yml /workspace/environment.yml
RUN conda env create -f environment.yml

SHELL ["/bin/bash", "--login", "-c"]
RUN conda init bash
RUN echo "conda activate omiembed" >> ~/.bashrc
