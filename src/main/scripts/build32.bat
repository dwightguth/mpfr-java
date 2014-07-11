set WD=%CD%
cd mpfr\mpir\build.vc10
echo 7 | mpir_config.py
cd lib_mpir_p4_sse2
msbuild lib_mpir_p4_sse2.vcxproj /p:Configuration=Release;Platform=win32 /t:Clean,Build
xcopy /Y /s /i ..\..\lib ..\lib
xcopy /Y /s win32 ..\lib\win32
cd ..\..\..\src\build.vc10\lib_mpfr
msbuild lib_mpfr.vcxproj /p:Configuration=Release;Platform=win32 /t:Clean,Build
cd ..\..\..\..
