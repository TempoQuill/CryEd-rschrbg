@echo off
set PROJECTNAME="CryEd"

rem	Build ROM
echo Assembling...
rgbasm -o %PROJECTNAME%.obj -p 0 Main.asm
if errorlevel 1 goto :BuildError
echo Linking...
rgblink -p 0 -o %PROJECTNAME%.gb -n %PROJECTNAME%.sym %PROJECTNAME%.obj
if errorlevel 1 goto :BuildError
echo Fixing...
rgbfix -v -p 0 %PROJECTNAME%.gb
echo Cleaning up...
del %PROJECTNAME%.obj
echo Build complete.
goto :end

:BuildError
set PROJECTNAME=
echo Build failed, aborting...
goto:eof

:end
rem unset vars
set PROJECTNAME=
echo ** Build finished with no errors **