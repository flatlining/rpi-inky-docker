# rpi-inky-docker

## Build

Python 2 (579MB):

``` shell
docker image build --tag rpi-inky:2 .
```

Python 3 (594MB):

``` shell
docker image build --tag rpi-inky:3 --build-arg PYTHONVER=3 .
```

## Run

One time:

``` shell
docker run -it --privileged --rm rpi-inky:2 /bin/bash
```

Persisted:

``` shell
docker run -it --privileged --name inky rpi-inky:2 /bin/bash
docker container restart inky
docker container exec -it -u inky -w /home/inky inky /bin/bash
docker container stop inky
docker container rm inky
```

## Create user

```
adduser inky
usermod -a -G sudo inky
```

## Test

``` python
url = "https://github.com/pimoroni/inky/raw/master/examples/phat/resources/InkypHAT-212x104-bw.png"
from inky import InkyPHAT
from PIL import Image
from six.moves.urllib.request import urlopen
inky = InkyPHAT("black")
img = Image.open(urlopen(url))
inky.set_image(img)
inky.show()

```

## References

- https://learn.pimoroni.com/tutorial/sandyj/getting-started-with-inky-phat
- https://github.com/pimoroni/inky
- https://github.com/alexellis/docker-arm
- https://www.raspberrypi.org/documentation/hardware/raspberrypi/spi/README.md
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
- https://vsupalov.com/docker-arg-env-variable-guide/
- https://python-future.org/compatible_idioms.html#urllib-module
