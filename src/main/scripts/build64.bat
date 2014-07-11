set WD=%CD%
cd mpfr\mpir\build.vc10
echo 18 | mpir_config.py
cd lib_mpir_k8
msbuild lib_mpir_k8.vcxproj /p:Configuration=Release;Platform=x64
xcopy /Y /s /i ..\..\lib ..\lib
xcopy /Y /s x64 ..\lib\x64
cd ..\..\..\src\build.vc10\lib_mpfr
msbuild lib_mpfr.vcxproj /p:Configuration=Release;Platform=x64
cd ..\..\..\..
