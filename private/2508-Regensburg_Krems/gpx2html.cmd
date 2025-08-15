@echo off
cd "%~dp0"

wsl bash -c "./%~n0.sh"

timeout /t 10
