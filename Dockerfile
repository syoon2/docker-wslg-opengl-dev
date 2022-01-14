FROM nvidia/opengl:1.2-glvnd-devel-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y build-essential

RUN apt install -y gdb

RUN apt install -y freeglut3 freeglut3-dev

RUN apt install -y mesa-utils

RUN apt install -y git

RUN apt install -y software-properties-common

COPY diagnostics.sh ./
RUN chmod +x ./diagnostics.sh

ENV DISPLAY=:0
ENV LD_LIBRARY_PATH=/usr/lib/wsl/lib

CMD ["./diagnostics.sh"]