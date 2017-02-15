FROM jupyter/pyspark-notebook

USER root

RUN mkdir -p /usr/src/app
RUN pip install influxdb

WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 9000
