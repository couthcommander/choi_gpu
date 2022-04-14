#!/bin/sh
docker run --gpus all --net=host -it -v AEs:/AEs cb_pytorch
