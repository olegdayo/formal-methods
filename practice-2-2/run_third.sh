#!/bin/sh

for i in 1 2 3 4
do
    echo "LTL p${1}";
    spin -search -a -ltl "p${i}" practice-2-2/3.pml | grep 'unreached in claim'
done

rm -r *.trail pan 2> /dev/null || true
