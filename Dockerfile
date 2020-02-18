# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=elrichindy/aods_base
FROM $BASE_CONTAINER

LABEL maintainer="unstableunicorn"
ENV DEBIAN_FRONTEND=noninteractive

RUN python -m pip install --quiet -r requirements.txt \
    && fix-permissions $CONDA_DIR \
    && fix-permissions /home/$NB_USER \