# rpi-inky-docker

Docker image to use with the [Inky pHAT](https://shop.pimoroni.com/products/inky-phat) and [Inky wHAT](https://shop.pimoroni.com/products/inky-what) using the [inky](https://github.com/pimoroni/inky) Python library, more information on the [Getting Started](https://learn.pimoroni.com/tutorial/sandyj/getting-started-with-inky-phat) guide.

## Build

Python 2 (579MB):

``` shell
docker image build --tag rpi-inky:2 .
```

Python 3 (594MB):

``` shell
docker image build --tag rpi-inky:3 --build-arg PYTHONVER=3 .
```

### Run

``` shell
docker run -it --privileged --rm rpi-inky:2
```

### Test

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

## TO-DO

- Run without `root`

## References

- https://learn.pimoroni.com/tutorial/sandyj/getting-started-with-inky-phat
- https://github.com/pimoroni/inky
- https://github.com/alexellis/docker-arm
- https://www.raspberrypi.org/documentation/hardware/raspberrypi/spi/README.md
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
- https://vsupalov.com/docker-arg-env-variable-guide/
- https://python-future.org/compatible_idioms.html#urllib-module
