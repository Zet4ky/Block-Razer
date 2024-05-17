@echo off

fltmc > nul || (
powershell.exe Start-Process -FilePath "%0" -ArgumentList "%cd%" -verb runas >NUL 2>&1
exit /b 2
)

set RazerPath=C:\Windows\Installer\Razer

rmdir /s /q "%RazerPath%" > nul

mkdir "%RazerPath%"

icacls "%RazerPath%" /deny "NT AUTHORITY\SYSTEM:(OI)(CI)W"

echo done!
Pause