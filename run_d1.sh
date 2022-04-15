#!/bin/sh
docker run --gpus all --net=host -it -v AEs:/workspace/AEs cb_pytorch
