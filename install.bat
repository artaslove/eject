@echo off
echo This script installs eject.ahk, which requires AutoHotKey available from https://autohotkey.com/download/ ... 
pause
copy eject.ahk %systemroot%\
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v eject /t REG_EXPAND_SZ /d ^%systemroot^%\eject.ahk
%systemroot%\eject.ahk
echo done!
REM ToDo: a proper installer, that makes sure we are admin and everything is actually installed
