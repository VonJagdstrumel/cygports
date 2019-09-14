#!/usr/bin/env bash

find data -maxdepth 1 -name '*.cygport' | while read -r i; do 
    cygport "$i" finish fetch all
done
