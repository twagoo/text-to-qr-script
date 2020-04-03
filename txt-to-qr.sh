#!/usr/bin/env bash

# https://github.com/twagoo/text-to-qr-script
#
# Requires qrencode. To install (on MacOS): `brew install qrencode`

OF=$(mktemp).png;
qrencode -o ${OF} $(read -s a && echo $a && unset a)
open $OF

#Self-destruct
(sleep 5 && rm $OF)&
