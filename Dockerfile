ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk update
RUN apk add python3 python3-dev openjpeg tiff openblas-dev py3-pip py3-numpy py3-pillow py3-smbus build-base

#FROM python:3
RUN pip install fastapi
RUN (mkdir rpi.gpio; cd rpi.gpio; pip download rpi.gpio; tar -xf ./RPi*; rm *.tar.gz; sed -i '1005,1015d' */source/py_gpio.c; tar -czf `ls`.tar.gz *; pip install ./*.tar.gz)

COPY . .

#FROM $BUILD_FROM
CMD echo $PATH
CMD ls /bin /usr/bin /usr/local/bin
CMD python ./bin/main.py
#CMD python ./bin/serve.py
