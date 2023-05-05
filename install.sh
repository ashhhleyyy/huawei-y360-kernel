#!/usr/bin/env bash

dpkg --add-architecture i386

apt update

apt install build-essential libc6:i386 python2.7 libstdc++6:i386 gcc-arm-linux-androideabi

ln -s /usr/bin/python2.7 /usr/local/bin/python
