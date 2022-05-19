@echo off

setlocal enabledelayedexpansion

title eSTKai - Rewiewer


set count=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)

set countb=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-name.txt) do (
    set /a countb+=1
    set varb[!countb!]=%%x
)



if not defined %varb[1]% ( set /P name="Your name?" )

if not defined %varb[1]% ( echo %name%>> %APPDATA%\supertuxkart\addons\estkai-name.txt ) else ( set name=%varb[1]% )

set /P review="Review for STK addon %2:"

echo %review%> C:\estkai-files\%2-review-%name%.txt

xcopy /y /f "C:\estkai-files\%2-review-%name%.txt" "%var[1]%\%1\"