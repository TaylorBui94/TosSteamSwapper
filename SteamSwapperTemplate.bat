:: This is used to swap steam accounts very fast. Up to 5 steam accounts then start TOS. You can add more accounts if needed   

:: The Batch File does this.

:: 1. requests user input for which account
:: 2. Closes Steam and TOS if they are open
:: 3. Opens steam
:: 4. Logs in
:: 5. Starts TOS. 
:: 6. The Script Pauses and starts at the beginning of the script on next key press

:: There is some setup to do   

:: 1. Right click SteamSwapper.bat -> "Create Shortcut"
:: 2. Right click the shortcut-> property -> shortcut Tab -> advanced -> tick "run as administrator" -> ok -> ok
:: 3. You will use the shortcut to open this file.


:: Setup 2

:: 1. right click SteamSwapper.bat -> edit  
:: 2. Scroll down to this code block below

::               if "%choice%"=="0" set username="Steam_ID_0" & goto end 


:: 3. replace Steam_ID_0 with the steam account you want to use.
:: 4. Do this for as many of your accounts that u are using. 

:: Setup 3

:: To save your password you just need to simply login once and itll save.
:: 
:: End of Readme/Setup









@echo off

TITLE Steam: Select Steam account

set username=" "

:begin


cls
echo                                  Select your account
echo                        =======================================
echo[
echo 0)  account0 - You can change description of anything here
echo 1)  account1
echo 2)  account2
echo 3)  account3
echo 4)  account4
echo 5)  account5

echo q)  Quit


echo[
echo[
echo Last Login: %username%
set /p choice=Input:
if "%choice%"=="0" set username="Steam_ID_0" & goto end
if "%choice%"=="1" set username="Steam_ID_1" & goto end
if "%choice%"=="2" set username="Steam_ID_2" & goto end
if "%choice%"=="3" set username="Steam_ID_3" & goto end
if "%choice%"=="4" set username="Steam_ID_4" & goto end
if "%choice%"=="5" set username="Steam_ID_5" & goto end
if "%choice%"=="q" goto exit
cls
goto begin
 



:end

taskkill.exe /F /IM Client_tos.exe
taskkill.exe /F /IM Client_tos_x64.exe
taskkill.exe /F /IM steam.exe

reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start steam://open/main
start steam://open/main
start steam://rungameid/372000
start steam://rungameid/372000


timeout /t 5 /nobreak
echo(It will close TOS/steam once you 
PAUSE
PAUSE

goto begin