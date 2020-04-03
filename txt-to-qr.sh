#!/usr/bin/env bash

OF=$(mktemp).png;
qrencode -o ${OF} $(read -s a && echo $a && unset a)
open $OF

#Self-destruct
(sleep 5 && rm $OF)&
