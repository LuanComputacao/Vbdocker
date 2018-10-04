@echo off

set winvbdockerRoot=%HOMEDRIVE%%HOMEPATH%\.winvbdocker

mkdir "%winvbdockerRoot%"

copy /-y src\stubs\Winvbdocker.yaml "%winvbdockerRoot%\Winvbdocker.yaml"
copy /-y src\stubs\after.sh "%winvbdockerRoot%\after.sh"
copy /-y src\stubs\aliases "%winvbdockerRoot%\aliases"

set winvbdockerRoot=
echo Winvbdocker initialized!
