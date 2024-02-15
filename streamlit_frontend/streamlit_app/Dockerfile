FROM ubuntu:latest
LABEL authors="AryaroopMajumder"

WORKDIR /usr/app/src

# DOWNLOAD THE DEPENDENCIES
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        locales \
        python3 -pip \
        python3-yaml \
        rsyslog systemd systemd-cron sudo \
    && apt-get clean

RUN pip3 install --upgrade pip

RUN pip3 install streamlit pandas numpy


COPY / ./


ENTRYPOINT ["streamlit","run","main.py"]