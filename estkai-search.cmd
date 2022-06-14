@echo off
setlocal enabledelayedexpansion

title eSTKai - Searching for addons...

estkai-update-check

set count=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)
echo Available addon %1:
dir "%var[1]%\%1"