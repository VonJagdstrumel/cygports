#!/usr/bin/env bash

packages=(
calm
cmake
cygport
git
libboost-devel
libbz2-devel
libjpeg-devel
liblzma-devel
libncurses-devel
libreadline-devel
ninja
zlib-devel
)

rm -f setup-x86_64.exe
wget https://cygwin.com/setup-x86_64.exe
chmod +x setup-x86_64.exe
./setup-x86_64.exe -B -q -d -s http://ftp.fau.de/cygwin/ -R cygwin $(for i in ${packages[@]}; do echo -P $i; done)

for i in data/*.cygport
    do cygport "$i" finish fetch all
done
