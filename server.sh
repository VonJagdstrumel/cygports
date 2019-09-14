#!/usr/bin/env bash

mkdir -p dist
cd dist

for arch in noarch x86 x86_64 ; do
    mkdir -p ${arch}/release
    find ../data -mindepth 3 -path "*.${arch}/dist/*" -prune -exec cp -ru {} ${arch}/release \;
    
    if [ ${arch} != noarch ]; then
        mksetupini --arch ${arch} --inifile=${arch}/setup.ini --releasearea=. --disable-check=missing-required-package,missing-depended-package
        bzip2 < ${arch}/setup.ini > ${arch}/setup.bz2
        xz < ${arch}/setup.ini > ${arch}/setup.xz
    fi
done

python -m SimpleHTTPServer
