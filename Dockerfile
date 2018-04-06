FROM ubuntu:latest

MAINTAINER Henry Mohn <henry@toasterlint.com>

RUN apt-get update -yq && apt-get -yq dist-upgrade && apt-get install -yq wget bzip2 && rm -rf /var/lib/apt/lists/*
RUN  wget https://github.com/restic/restic/releases/download/v0.8.3/restic_0.8.3_linux_amd64.bz2 \
	&&bunzip2 restic_0.8.3_linux_amd64.bz2 \
	&& chmod +x restic_0.8.3_linux_amd64 \
	&& mv restic_0.8.3_linux_amd64 /usr/bin/restic

RUN mkdir /data

ENTRYPOINT ["/data/restic.sh"]
