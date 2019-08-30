@echo off

set vbdockerRoot=%HOMEDRIVE%%HOMEPATH%\.vbdocker
set vbdockerMain=%HOMEDRIVE%%HOMEPATH%\vbdocker

mkdir "%vbdockerRoot%"
mkdir "%vbdockerMain%"

echo Creating config folder .vbdocker in your home folder
copy /Y src\stubs\Vbdocker.yaml "%vbdockerRoot%\Vbdocker.yaml"
copy /Y src\stubs\after.sh "%vbdockerRoot%\after.sh"
copy /Y src\stubs\aliases "%vbdockerRoot%\aliases"

echo Creating main folder vbdocker in your home folder
copy  Vagrantfile "%vbdockerMain%\Vagrantfile"
xcopy /Y /E /H /K scripts "%vbdockerMain%\scripts\"
xcopy /Y /E /H /K .vagrant "%vbdockerMain%\.vagrant\"

set vbdockerRoot=
set vbdockerMain=

echo Vbdocker initialized!
