@echo off

title WARNING!
echo WARNING! THIS PROGRAM WILL FIX MISSING FILES AND CORRUPT INSTALLS. IF YOUR WINDOWS IS MESSED UP PLEASE BACK UP YOUR FILESAND RESTORE YOUR WINDOWS!
pause
goto m

:m
title Fix My Windows by CuteCat32
cls
echo 1 SFC
echo 2 DISM
echo 3 I'm not Sure do Both
echo 4 Exit
echo.
choice /c 1234 /n

if %errorlevel%==1 goto sfc
if %errorlevel%==2 goto dism
if %errorlevel%==3 goto both
if %errorlevel%==4 exit

:sfc
title Fix My Windows-sfc /scannow
echo.
echo Beginning sfc /scannow...
timeout /t 2 >nul
sfc /scannow
goto m

:dism
title Fix My Windows-dism /online /cleanup-image /restorehealth
echo.
echo Beginning dism /online /cleanup-image /restorehealth...
timeout /t 2 >nul
dism /online /cleanup-image /restorehealth
goto m

:both
title Fix My Windows-sfc /scannow
echo.
echo Beginning sfc /scannow...
timeout /t 2 >nul
sfc /scannow
title Fix My Windows-dism /online /cleanup-image /restorehealth
echo.
echo Beginning dism /online /cleanup-image /restorehealth...
timeout /t 2 >nul
dism /online /cleanup-image /restorehealth
goto m
