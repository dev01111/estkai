@echo off
setlocal enabledelayedexpansion

title eSTKai - Installing addon %1 %2...

set count=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)
echo Installing the %1 %2 from %var[1]%...

pause

if not exist "C:\estkai-files" ( mkdir C:\estkai-files )

echo Downloading main source from repo...

echo Downloading "%var[1]%\%1\%2.zip"

xcopy /y /f "%var[1]%\%1\%2.zip" "C:\estkai-files"

rem copy "%var[1]%\%1\%2.zip" "C:\estkai-files"

if not exist "%APPDATA%\supertuxkart\addons\%1" ( mkdir %APPDATA%\supertuxkart\addons\%1 )

echo Copying to STK...

copy "C:\estkai-files\%2.zip" "%APPDATA%\supertuxkart\addons\%1"

powershell -command "Expand-Archive -Force '%APPDATA%\supertuxkart\addons\%1\%2.zip' '%APPDATA%\supertuxkart\addons\%1\'"

echo Operation complete!

pause