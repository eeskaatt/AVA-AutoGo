:start
@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET old=new
SET new=autogo
for /f "tokens=*" %%f in ('dir /b *.exe') do (
  SET newname=%%f
  SET newname=!newname:%old%=%new%!
  move "%%f" "!newname!"
)
TITLE AutoGo Bot
TIMEOUT 3
COLOR 03
autogo.exe
goto start