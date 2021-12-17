@echo off
set bin="D:\bin
set var=%1
IF "%1"=="-d" goto DIR
Echo.%var% | findstr /C:"/">nul && (
    SET mo=%var:/=\%
) || (
    SET mo=%var
)
set errro_string=there is no %var% in /bin/ 
set help_string=try to write bin -d to see files in /bin/
set place=%bin%%mo%"
if not exist %place% (
  echo %errro_string%
  echo %help_string%
  goto CONTINUE
  exit 
)
cd /d %place%
goto CONTINUE
:DIR
cd /d "D:\bin\"
dir
:CONTINUE

