@echo off

setlocal enabledelayedexpansion

title eSTKai - Rewiewer

estkai-update-check


set count=0

for /f "tokens=*" %%x in (%APPDATA%\supertuxkart\addons\estkai-config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)




set /P name="Your name?"

set /P review="Review for STK addon %2:"

if exist "C:\estkai-files\%2-review-%name%.txt" ( del "C:\estkai-files\%2-review-%name%.txt" )

echo %review%> "C:\estkai-files\%2-review-%name%.txt"

xcopy /y /f "C:\estkai-files\%2-review-%name%.txt" "%var[1]%\%1\"