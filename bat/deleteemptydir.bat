@echo off
IF NOT "%~1" == "" (
	echo "%~1"
	for /f "delims=" %%d in ('dir %1 /s /b /ad ^| sort /r') do rd "%%d"
) ELSE (
	for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"
)
pause
