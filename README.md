# TosSteamSwapper
Modified version of the steam swapper to work with "Tree of Savior"


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
:: End of Readme
