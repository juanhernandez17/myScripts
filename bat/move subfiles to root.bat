@echo off
set /P end="File endings to move [*.END] Ex:*.mp4 *.avi :"
echo %end%
pause
for /r "." %%a in (%end%) do (
	move "%%a"
)
::dir /B /a-D /s | find /V ".description" | find /V ".jpg" > dirlist.txt
::dir /a-D /S > dirlist.txt
::for /r "." %%x in (*) do move "%%x"
