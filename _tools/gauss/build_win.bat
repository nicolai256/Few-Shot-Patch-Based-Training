@echo off
setlocal ENABLEDELAYEDEXPANSION

call "vcvarsall.bat" amd64

:compile
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cl C:\deepdream-test\Few-Shot-Patch-Based-Training-master\_tools\gauss\gauss.cpp /DNDEBUG /O2 /fp:fast /Gy /GL /EHsc /wd4312 /nologo /Fe"gauss.exe" || goto FAIL
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

del gauss.obj

goto :EOF

:error
echo FAILED
@%COMSPEC% /C exit 1 >nul
