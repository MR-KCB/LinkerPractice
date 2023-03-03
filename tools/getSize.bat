@echo off
rem Setup configuration
SET CWD=%cd%
SET TOOL_DIR=%CWD%\tools\MinGW\bin
SET OUTPUT_DIR=%CWD%\out
SET SIZE_TOOL=%TOOL_DIR%/size.exe -t


rem Run utility to get the size
call %SIZE_TOOL% %OUTPUT_DIR%/main.o
call %SIZE_TOOL% %OUTPUT_DIR%/as.o
