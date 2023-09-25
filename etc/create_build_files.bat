copy dev.vcxitems build.files.vcxitems /y

@echo off

setlocal enableextensions disabledelayedexpansion

set "filename=build.files.vcxitems"

set "search="$(MSBuildThisFileDirectory)"
set "replace=""

for /f "delims=" %%i in ('type "%filename%" ^& break ^> "%filename%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%filename%" echo(!line:%search%=%replace%!
    endlocal
)