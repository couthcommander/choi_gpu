FROM nvcr.io/nvidia/pytorch:21.10-py3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get dist-upgrade -y

RUN apt install -y git

RUN pip install -U jupyter
RUN pip install torch==1.9.0 torchvision==0.10.0 torchaudio==0.9.0 torchtext==0.10.0
RUN pip install transformers==4.8.0
RUN pip install datasets ipywidgets seaborn huggingface_hub
RUN jupyter nbextension enable --py widgetsnbextension
