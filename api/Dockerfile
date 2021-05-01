FROM ubuntu:18.04

LABEL Name="aac-grid api"
LABEL Description="Dockerized Flask API to serve aac-grid app"

EXPOSE 3060
EXPOSE 3061
EXPOSE 5432

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# General
RUN apt update -y --fix-missing
RUN apt install -y \
        software-properties-common \
        build-essential \
        zlib1g-dev \
        libncurses5-dev \
        libgdbm-dev \
        libnss3-dev \
        libssl-dev \
        libreadline-dev \
        libffi-dev \
        libsqlite3-dev \
        libbz2-dev \
        libpython3.7-dev \
        libpq-dev \
        unzip \
        bzip2 \
        perl \
        nano \
        vim \
        wget \
        curl \
        make \
        automake \
        postgresql \
        postgresql-client \
        netcat

# Python
RUN apt-get install -y python3-pip python3-dev python3 musl-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 --no-cache-dir install --upgrade pip \
  && rm -rf /var/lib/apt/lists/*
COPY requirements.txt /
RUN pip install -r /requirements.txt

# App Infrastructure
COPY /flaskr /flaskr
COPY docker-api-entrypoint.sh /

# Entry
RUN chmod +x /docker-api-entrypoint.sh
ENTRYPOINT ["/docker-api-entrypoint.sh"]