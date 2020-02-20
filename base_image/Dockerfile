# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/all-spark-notebook
FROM $BASE_CONTAINER

LABEL maintainer="unstableunicorn"
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /home/jovyan/work

COPY requirements.txt .

USER root

# Install cmake to build python libraries
RUN apt-get update && apt-get install -y cmake \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

USER $NB_USER