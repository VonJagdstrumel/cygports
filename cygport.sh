#!/usr/bin/env bash

find "${1:-data}" -maxdepth 1 -name '*.cygport' | while read -r i; do 
    cygport "$i" finish fetch all
done
