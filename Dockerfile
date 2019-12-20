FROM espressif/idf:latest

MAINTAINER Lukasz Marcin Podkalicki <lpodkalicki@gmail.com>

ENV PWD=/build
ENV SHELL=/bin/bash

# Change workdir
WORKDIR /build
