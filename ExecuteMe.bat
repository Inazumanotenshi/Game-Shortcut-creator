@echo off
setlocal

:: Name of EXE
set "EXE=(YourGameNameHere).exe"

:: Ordnerpfad der Batch
set "CURR=%cd%"

:: get name of exe
for %%A in ("%EXE%") do set "EXE_NAME=%%~nA"

:: Check if exe exists
if not exist "%CURR%\%EXE%" (
    echo %EXE% not found.
    pause
    exit /b
)

echo Creating shortcuts for %EXE_NAME% ...

:: DX11 (AMD)
powershell -command ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%CURR%\%EXE_NAME% (DX11 - AMD).lnk');" ^
  "$s.TargetPath='%CURR%\%EXE%';" ^
  "$s.Arguments='-dx11';" ^
  "$s.Save()"

:: DX12 (Nvidia)
powershell -command ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%CURR%\%EXE_NAME% (DX12 - Nvidia).lnk');" ^
  "$s.TargetPath='%CURR%\%EXE%';" ^
  "$s.Arguments='-dx12';" ^
  "$s.Save()"

echo Done!
pause

