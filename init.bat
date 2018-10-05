@echo off

set vbdockerRoot=%HOMEDRIVE%%HOMEPATH%\.vbdocker

mkdir "%vbdockerRoot%"

copy /-y src\stubs\Vbdocker.yaml "%vbdockerRoot%\Vbdocker.yaml"
copy /-y src\stubs\after.sh "%vbdockerRoot%\after.sh"
copy /-y src\stubs\aliases "%vbdockerRoot%\aliases"

set vbdockerRoot=
echo Vbdocker initialized!
