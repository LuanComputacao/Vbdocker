#!/usr/bin/env bash

vbdockerRoot=~/.vbdocker
vbdockerRoot=~/vbdocker

mkdir -p "$vbdockerRoot"
mkdir -p "$vbdockerMain"

cp -i ./src/stubs/Vbdocker.yaml "$vbdockerRoot/Vbdocker.yaml"
cp -i ./src/stubs/after.sh "$vbdockerRoot/after.sh"
cp -i ./src/stubs/aliases "$vbdockerRoot/aliases"


echo Creating main folder vbdocker in your home folder
cp  Vagrantfile "%vbdockerMain%\Vagrantfile"
cp -r scripts "$vbdockerMain\scripts"
cp -r .vagrant "$vbdockerMain\.vagrant"

echo "Vbdocker initialized!"
