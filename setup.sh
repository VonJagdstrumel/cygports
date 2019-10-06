#!/usr/bin/env bash
awk '{print "-P "$0}' | xargs "${1-./setup-x86_64}" -B -q -d -s http://ftp.fau.de/cygwin/ -R cygwin
