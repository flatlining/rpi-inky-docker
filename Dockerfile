FROM raspbian/stretch

LABEL maintainer="mschertel@gmail.com"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y apt-utils curl wget
RUN apt-get install -y raspi-gpio

RUN apt-get install -y python-pip
RUN apt-get install -y python-rpi.gpio
RUN apt-get install -y python-spidev
RUN apt-get install -y python-smbus
RUN apt-get install -y python-numpy python-pil python-lxml python-smbus
RUN pip2 install einky

RUN apt-get install -y python3-pip
RUN apt-get install -y python3-rpi.gpio
RUN apt-get install -y python3-spidev
RUN apt-get install -y python3-smbus
RUN apt-get install -y python3-numpy python3-pil python3-lxml python3-smbus
RUN pip3 install einky

RUN apt-get autoclean -y && apt-get autoremove -y && apt-get clean && apt-get remove && rm -rf /var/lib/apt/lists/*

WORKDIR /root
