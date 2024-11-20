@echo off
setlocal enabledelayedexpansion

for /L %%i in (1,1,10) do (
    set "folder1=BaseFolder\Folder_1_%%i"
    mkdir "!folder1!"
    for /L %%j in (1,1,10) do (
        set "folder2=!folder1!\Folder_2_%%j"
        mkdir "!folder2!"
        for /L %%k in (1,1,10) do (
            mkdir "!folder2!\Folder_3_%%k"
        )
    )
)
echo Done !
pause
