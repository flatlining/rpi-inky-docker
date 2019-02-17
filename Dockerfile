FROM raspbian/stretch

ARG PYTHONVER=

LABEL maintainer="mschertel@gmail.com"

RUN apt-get update && apt-get upgrade -y \
 && apt-get install -y \
    raspi-gpio \
    python${PYTHONVER}-pip \
    python${PYTHONVER}-rpi.gpio \
    python${PYTHONVER}-spidev \
    python${PYTHONVER}-smbus \
    python${PYTHONVER}-numpy \
    python${PYTHONVER}-pil \
    python${PYTHONVER}-lxml \
    python${PYTHONVER}-smbus \
 && pip${PYTHONVER} install einky \
 && apt-get autoclean -y && apt-get autoremove -y && apt-get clean && apt-get remove && rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENV PYTHONVER $PYTHONVER
CMD python${PYTHONVER}
