#!/usr/bin/env bash

vbdockerRoot=~/.vbdocker

mkdir -p "$vbdockerRoot"

cp -i ./src/stubs/Vbdocker.yaml "$vbdockerRoot/Vbdocker.yaml"
cp -i ./src/stubs/after.sh "$vbdockerRoot/after.sh"
cp -i ./src/stubs/aliases "$vbdockerRoot/aliases"

echo "Vbdocker initialized!"