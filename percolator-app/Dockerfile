FROM python:3.6-alpine
MAINTAINER joep.vermaat@naturalis.nl

#USER root
RUN apk update \
    && \
    apk add \
    py3-psycopg2 \
    py3-dateutil \
    py3-yaml \
    git \
    jq
COPY requirements.txt /tmp/
RUN pip3 install --requirement /tmp/requirements.txt -U
ADD . /usr/src
WORKDIR /usr/src
