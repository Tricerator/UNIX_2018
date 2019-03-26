#!/bin/bash


cat countrycodes_en.csv | tail -n +2 | tr ' ' '_'_ | cut -d'"' -f2 > staty.tmp

for radek in `cat staty.tmp`; do echo $radek | wc -c >> pocty_statecku.tmp ; done
paste staty.tmp pocty_statecku.tmp | sort -n -k2,2 > vysledek.tmp
rm staty.tmp pocty_statecku.tmp
cat vysledek.tmp | cut -f1 | tr "_" " "
rm vysledek.tmp




