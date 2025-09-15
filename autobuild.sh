#!/bin/bash

echo "Building at http://127.0.0.1:8000/"

sphinx-autobuild -M html source _build
