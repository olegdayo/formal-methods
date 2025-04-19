#!/bin/sh

for i in 1 2 3
do
    spin -search -a -ltl "p${i}" practice-2-2/2.pml | grep 'unreached in claim'
done

rm -r *.trail pan 2> /dev/null || true
