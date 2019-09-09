#!/bin/sh

packages=(
bison
cmake
curl
cygport
flex
git
mingw64-x86_64-gcc-g++
python27
)

wget https://cygwin.com/setup-x86_64.exe
chmod +x setup-x86_64.exe
./setup-x86_64.exe -B -q -d -s http://ftp.fau.de/cygwin/ -R cygwin $(for i in ${packages[@]}; do echo -P $i; done)

for i in data/*.cygport; do
    cygport "$i" fetch all
done
