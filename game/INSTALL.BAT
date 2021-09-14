rem  Place this batch file and the accompanying self-extracting archives
rem  in the directory you want to install Trade Wars 2002 v3
rem  Run this batch file to setup a new game

echo off

if exist EXTERN.EXE goto upgrade

echo Now INSTALLING your Trade Wars 2002 v3
md ANSI
cd ANSI
..\twsupp 
cd ..
md GOLD
cd GOLD
..\twgold 
cd ..
twpgm
erase twsupp.exe
erase twgold.exe
erase twpgm.exe
erase 2002v309.zip

bigbang 
extern 
 
goto end


:upgrade

echo Now UPGRADING your Trade Wars 2002 to version 3.09
cd ANSI
..\twsupp -o
cd ..
md GOLD
cd GOLD
..\twgold -o
cd ..
twpgm -o
erase twsupp.exe
erase twgold.exe
erase twpgm.exe
erase 2002v309.zip


:end
echo on
type install.dir

