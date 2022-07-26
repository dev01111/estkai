@echo off
setlocal enabledelayedexpansion

set version=1.7

set latest=https://github.com/dev01111/estkai/raw/main/latest.txt

set count=0

echo Checking for updates...

powershell -command "(New-Object System.Net.WebClient).DownloadFile('%latest%','%APPDATA%\supertuxkart\addons\latest-estkai.txt')"

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\latest-estkai.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)

if %var[1]% LEQ %version% (
echo No updates avalible
) else (
echo Update %var[0]% avalible, get it from GitHub.
)
