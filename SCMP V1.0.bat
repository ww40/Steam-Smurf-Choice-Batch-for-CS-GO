ECHO OFF
CLS
:MENU
ECHO.
ECHO .................................................
ECHO : Will Webb's Smurf Choice Machine Pro - 10/01/2018
ECHO : NOTE: You will have to of least logged in to the smurf choice whilst selecting 'remember password'
ECHO -------------------------------------------------
ECHO : PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO .................................................
ECHO.
ECHO 1 - Open  Willwebb2000
ECHO 2 - Open  Silver2gg
ECHO 3 - Open Nothing
ECHO 4 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO Willwebb2000
IF %M%==2 GOTO Silver2gg
IF %M%==3 GOTO Another
IF %M%==4 GOTO EOF
:Silver2gg
set username=silvergg2
taskkill /F /IM steam.exe
SLEEP 1
reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start steam://open/main
CLS
GOTO MENU
:Willwebb2000
set username=willwebb2000
taskkill /F /IM steam.exe
SLEEP 1
reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start steam://open/main
CLS
GOTO MENU
