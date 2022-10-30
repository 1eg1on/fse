FROM ubuntu:22.04

ADD ./ ./app

RUN cd app
RUN apt-get update
RUN  apt-get -y install cmake
RUN apt-get -y install build-essential
RUN apt-get -y install libglfw3-dev
RUN cmake ./app -B ./app
RUN ls ./app
RUN make -f ./app/Makefile

ENTRYPOINT ["bin/bash"]
