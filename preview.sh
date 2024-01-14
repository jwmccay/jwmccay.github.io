#!/bin/sh

# Usage:
#    ./preview.sh firefox
#    ./preview.sh google-chrome

rm -rf _build
sphinx-build -M html source _build
$1 _build/html/index.html