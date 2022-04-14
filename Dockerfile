FROM nvcr.io/nvidia/pytorch:21.10-py3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get dist-upgrade -y

RUN apt install -y git

RUN pip install -U jupyter
RUN pip install datasets transformers[sentencepiece] ipywidgets torch seaborn huggingface_hub
RUN jupyter nbextension enable --py widgetsnbextension
