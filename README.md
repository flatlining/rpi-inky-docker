# rpi-inky-docker

## Build

Python 2 (579MB):

``` shell
$ docker image build --tag rpi-inky:2 .
```

Python 3 (594MB):

``` shell
$ docker image build --tag rpi-inky:3 --build-arg PYTHONVER=3 .
```

## Run

``` shell
$ docker run -it --privileged --rm rpi-inky:2 /bin/bash
```

## Test

``` shell
$ wget https://github.com/pimoroni/inky/raw/master/examples/phat/resources/InkypHAT-212x104-bw.png
```

``` python
from inky import InkyPHAT
inky_display = InkyPHAT("black")
from PIL import Image
img = Image.open("/root/InkypHAT-212x104-bw.png")
inky_display.set_image(img)
inky_display.show()

```

## References

- https://learn.pimoroni.com/tutorial/sandyj/getting-started-with-inky-phat
- https://github.com/pimoroni/inky
- https://github.com/alexellis/docker-arm
- https://www.raspberrypi.org/documentation/hardware/raspberrypi/spi/README.md
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
- https://vsupalov.com/docker-arg-env-variable-guide/