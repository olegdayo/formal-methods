#!/bin/sh

# Usage: ./script.sh p1 f.pml
spin -search -a -ltl ${1} ${2} | grep errors
rm -r *.trail pan 2> /dev/null || true
