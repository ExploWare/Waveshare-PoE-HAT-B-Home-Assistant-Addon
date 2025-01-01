#ARG BUILD_FROM
#FROM $BUILD_FROM
FROM ghcr.io/hassio-addons/base:latest

RUN apk update
RUN apk add python3 python3-dev openjpeg tiff openblas-dev py3-pip py3-numpy py3-pillow build-base

FROM python:3
RUN pip install fastapi smbus smbus2
RUN (mkdir rpi.gpio; cd rpi.gpio; pip download rpi.gpio; tar -xf ./RPi*; rm *.tar.gz; sed -i '1005,1015d' */source/py_gpio.c; tar -czf `ls`.tar.gz *; pip install ./*.tar.gz)

COPY rootfs/ /

#FROM $BUILD_FROM
