@echo off

title eSTKai - STK Addon Installer
echo eSTKai
echo The "effecient SuperTuxKart addons installer"

set addonsfolder=%APPDATA%/supertuxkart/addons


echo Addons will be installed at: %addonsfolder%

if not exist "%addonsfolder%" ( mkdir "%addonsfolder%" )

set /P addonsdict="Type in repo for installing addons... "
echo User chose %addonsdict%
if not exist "%addonsdict%" ( set fone=yes ) else ( set fone=no )

set correct=yes

echo Incorrect folder is %fone%

if %fone%==%correct% ( echo Error - folder non-existent )
if %fone%==%correct% ( pause )
if %fone%==%correct% ( exit )

echo Passed error test.

echo %addonsdict%> "%addonsfolder%/estkai-config.txt"

echo Wrote config to %addonsfolder%/estkai-config.txt

pause
