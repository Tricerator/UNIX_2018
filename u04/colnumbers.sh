#!/bin/bash

if [ -n "$1"  ]; then 

cat "$1" | head -n 1 | tr ";" "\n" | cat -n

else echo "Potrebuji soubor"
fi


