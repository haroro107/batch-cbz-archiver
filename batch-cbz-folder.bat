@echo off
setlocal enabledelayedexpansion
set zip_exe="C:\Program Files\7-Zip\7z.exe"
set folder_path=%cd%

for /D %%f in (*) do (
    set folder_name=%%~nxf
    !zip_exe! a -tzip "!folder_name!.zip" "%%f\"
    rename "!folder_name!.zip" "!folder_name!.cbz"
)
