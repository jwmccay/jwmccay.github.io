#!/bin/bash

rm -rf _build
sphinx-build -M html source _build
# $1 _build/html/index.html

index_file="_build/html/index.html"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        firefox $index_file
elif [[ "$OSTYPE" == "darwin"* ]]; then
        open -a Safari $index_file
else
        echo "Unrecognized OS"
fi