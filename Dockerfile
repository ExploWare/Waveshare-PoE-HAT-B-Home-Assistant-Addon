ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
        apk add --no-cache \
                python3 \
                openjpeg \
                tiff \
                openblas-dev \
                py3-pip \
                py3-numpy \
                py3-pillow \
                py3-smbus 

FROM python:3
RUN pip install rpi.gpio
COPY . .
FROM $BUILD_FROM
CMD python3 ./bin/main.py
CMD bash
