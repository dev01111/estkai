@echo off
setlocal enabledelayedexpansion

title eSTKai - Removing addon %1 %2...

estkai-update-check

set count=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)

echo Install repo set to %var[1]%...

echo Deleting %1 main... (%APPDATA%\supertuxkart\addons\%1\%2)
del %APPDATA%\supertuxkart\addons\%1\%2
echo Deleting %1 zipped... (%APPDATA%\supertuxkart\addons\%1\%2.zip)
del %APPDATA%\supertuxkart\addons\%1\%2.zip
echo Deleting %1 zipped backup... (C:\estkai-files\%2.zip)
del C:\estkai-files\%2.zip
echo Recording deletion of %1...
echo This %2 of the %1 group was deleted by eSTKai> %APPDATA%\supertuxkart\addons\%1\%2\estkai-deleted.txt

echo Operation completed

pause