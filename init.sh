#!/usr/bin/env bash

winvbdockerRoot=~/.winvbdocker

mkdir -p "$winvbdockerRoot"

cp -i ./src/stubs/Winvbdocker.yaml "$winvbdockerRoot/Winvbdocker.yaml"
cp -i ./src/stubs/after.sh "$winvbdockerRoot/after.sh"
cp -i ./src/stubs/aliases "$winvbdockerRoot/aliases"

echo "Winvbdocker initialized!"