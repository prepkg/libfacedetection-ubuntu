# libfacedetection-ubuntu

![libfacedetection-raspberrypi](https://i.ibb.co/zZY9gYd/libfacedetection-ubuntu.png)

Precompiled **libfacedetection (4092665 commit)** binaries for **Ubuntu 22.04**.

## Supported features

* AVX2 optimization
* OpenMP multi-threading

## Prerequisites

### Supported OS

* Ubuntu 22.04

## Install

```shell
wget https://github.com/prepkg/libfacedetection-ubuntu/releases/latest/download/libfacedetection.deb
```

```shell
sudo apt install -y ./libfacedetection.deb
```

## Uninstall

```shell
sudo apt purge --autoremove -y libfacedetection
```

## Debian Package

Debian package contains the following shared libraries:

| Library                     | Description                                              |
|:----------------------------|:---------------------------------------------------------|
| libfacedetection.so         | CNN-based face detection                                 |

## Reference

1. [libfacedetection repository](https://github.com/ShiqiYu/libfacedetection)
