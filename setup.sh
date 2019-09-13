#!/usr/bin/env bash
"${1:-./setup-x86_64}" -B -q -d -s http://ftp.fau.de/cygwin/ -R cygwin $(while read -r i; do echo -P $i; done)
