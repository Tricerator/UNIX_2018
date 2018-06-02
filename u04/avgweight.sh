#!/bin/bash

if [ -n "$1"  ]; then 
poradi=`cat "$1" | head -n 1 | tr ";" "\n" | cat -n | grep -E 'weight|Weight|hmotnost|Hmotnost' | cut -f 1`
cat $1 | cut -d";" -f `echo $poradi` | tail -n +2 > /tmp/upraven
pocet_radek=`wc -l < /tmp/upraven`
soucet=0
while read radek
do
soucet=$((soucet + radek))

done < /tmp/upraven
rm /tmp/upraven
echo $((soucet/pocet_radek))

else echo "Potrebuji soubor"
fi


