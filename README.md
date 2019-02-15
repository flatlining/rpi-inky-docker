# rpi-inky-docker

- https://hub.docker.com/r/raspbian/stretch
- `docker run -it --privileged --name inky raspbian/stretch:latest /bin/bash`
- `apt update && apt upgrade -y && apt install -y sudo nano curl expect`
- `adduser inky`, `useradd -m -s /bin/bash inky`, `adduser --gecos '' inky`
  - `expect adduser.exp`
- `rm adduser.exp`
- `usermod -aG sudo inky`
- `docker container restart inky`
- `docker exec -it --user inky --workdir /home/inky inky /bin/bash`
- `curl https://get.pimoroni.com/inky | bash`
  - `wget https://get.pimoroni.com/inky`
  - `chmod +x inky`
  - `expect inky.exp`
- `rm inky.exp inky`
- `apt purge -y expect && apt autoclean -y && apt autoremove -y && apt clean && apt remove && rm -rf /var/lib/apt/lists/*`

## References

https://learn.pimoroni.com/tutorial/sandyj/getting-started-with-inky-phat
https://github.com/pimoroni/inky
https://github.com/alexellis/docker-arm
https://www.raspberrypi.org/documentation/hardware/raspberrypi/spi/README.md
