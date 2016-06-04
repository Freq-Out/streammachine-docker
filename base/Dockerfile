FROM node:6
MAINTAINER Stephane Jourdan <stephane@phauneradio.com>
RUN mkdir -p /var/log/StreamMachine
RUN apt-get update -y && apt-get install -y git && apt-get clean \
&& rm -rf /var/lib/apt/lists/*
RUN cd /srv; git clone https://github.com/StreamMachine/StreamMachine.git
RUN cd /srv/StreamMachine; npm install
RUN mkdir -p /srv/StreamMachine/config
WORKDIR /srv/StreamMachine
ENTRYPOINT ["/srv/StreamMachine/streammachine-cmd"]
