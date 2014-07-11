set WD=%CD%
xcopy /Y /S /i target\generated-sources\hawtjni\native-package target\native-build
set INCLUDE=%INCLUDE%;%WD%\target\dependency
cd target\native-build
copy %WD%\src\main\scripts\vs2010.vcxproj .
msbuild vs2010.vcxproj /p:Configuration=Release;Platform=%WINPLATFORM%;UseEnv=true;MpfrLib=%WD%\target\dependency\libmpfr.lib /t:Clean,Build
cd ..\..
mkdir target\generated-sources\hawtjni\lib\META-INF\native\%PLATFORM%
copy target\native-build\target\%WINPLATFORM%-release\lib\mpfr_java.dll target\generated-sources\hawtjni\lib\META-INF\native\%PLATFORM%
