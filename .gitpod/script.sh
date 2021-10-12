#!/bin/sh

if [ "$#" -ne 1 ] || ! [ -e "$1" ]; then
  echo "Usage: $0 [-d] <file>" >&2
  exit 1
fi

/usr/bin/python ~/esotope-bfc/esotope-bfc "$1" > /tmp/code.c
gcc /tmp/code.c -O2 -s -o /tmp/code

/tmp/code

rm /tmp/code.c /tmp/code