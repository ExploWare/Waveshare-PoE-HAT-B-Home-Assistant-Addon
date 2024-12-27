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
                py3-smbus \
                py3-rpigpio

FROM python:3
COPY . .
CMD python ./bin/main.py
