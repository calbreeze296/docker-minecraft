FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y --force-yes \
	vim \
    openjdk-17-jdk-headless


ARG uid
ARG gid

RUN groupadd --gid ${gid} minecraft
RUN useradd minecraft --uid ${uid} --gid ${gid} --shell /bin/bash

RUN mkdir -p /home/minecraft
RUN chown -R minecraft:minecraft /home/minecraft

USER minecraft

COPY files/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]