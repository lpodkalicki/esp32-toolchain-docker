# Overview

Docker image built on top of **espressif/idf** with xtensa toolchain, ESP_IDF, and few additional tools:
* xtensa toolchain (2019; crosstool-NG esp-2019r2; 8.2.0)
* esptool.py (v2.9-dev)
* make (v4.1)
* cmake (v3.10.2)

DockerHub: https://hub.docker.com/r/lpodkalicki/esp32-toolchain

## Building image locally

```bash
git clone git@github.com:lpodkalicki/esp32-toolchain-docker.git
cd esp32-toolchain
docker build --rm -t lpodkalicki/esp32-toolchain:latest .
```

## An example of running toolchain binary

```bash
docker run --rm --privileged -v $(pwd):/build lpodkalicki/esp32-toolchain xtensa-esp32-elf-gcc --version
```

# Installing

Bellow you can find recommended simple one-line installer that pulls the newest docker-image and installs **esp32-toolchain** script into "/usr/bin/" directory.

```bash
curl https://raw.githubusercontent.com/lpodkalicki/esp32-toolchain-docker/master/install.sh | bash -s --
```

## Getting started

1. Install toolchain using recommended simple one-line installer.
2. Use super command **esp32-toolchain** for all toolchain binaries. 
3. Execute toolchain binaries inside your working/project directory. 

## Examples

```bash
$ cd your-project/
$ esp8266-toolchain idf.py build
$ esp8266-toolchain idf.py flash
$ esp8266-toolchain idf.py monitor
$ esp8266-toolchain xtensa-esp32-elf-gcc --version
$ esp8266-toolchain make -version
$ esp8266-toolchain cmake -version
$ esp8266-toolchain make menuconfig
$ esp8266-toolchain make && make flash monitor
```
