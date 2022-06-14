@echo off

setlocal enabledelayedexpansion

title eSTKai - Rewiewer - Getting reviews...

estkai-update-check

set count=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)


echo %var[1]%\%1\%2-review-%3.txt is the download spot
xcopy /y /f "%var[1]%\%1\%2-review-%3.txt" "C:\estkai-files\"

set countb=0

for /f "tokens=*" %%x in (C:\estkai-files\%2-review-%3.txt) do (
    set /a countb+=1
    set varb[!countb!]=%%x
)

echo %varb[1]%