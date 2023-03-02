@echo off
rem Setup configuration
SET CWD=%cd%
::SET TOOL_DIR=%CWD%\tools\avr-gcc\bin
::SET TOOL_DIR=%CWD%\tools\MinGW\bin
SET MAKE_TOOL_DIR=%CWD%\tools\MinGW\bin
call update_path.bat

::SET CC=avr-gcc.exe
SET CC=gcc.exe
SET LD=ld.exe
SET MAKE=%MAKE_TOOL_DIR%/mingw32-make.exe
SET OUTPUT_DIR=%CWD%\out
SET SRC_DIR=%CWD%\src

SET OUTPUT=main.hex

rem compiler and linker configuration
SET CFLAGS=-std=c99 -g0 -O0 
::SET LDFLAGS=-Wl,-Map=%OUTPUT_DIR%\app.map
SET LDFLAGS=-Wl,-Map=%OUTPUT_DIR%/app.map -T %CWD%/LinkerFile.ld -Wl,--check-sections -Wl,--strip-all -Wl,--strip-debug

if EXIST %OUTPUT_DIR%/*.* (
  cd %OUTPUT_DIR%
  del /q *
  cd %CWD%
)

rem run compile
%MAKE% -f app.mak %1


