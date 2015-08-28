call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\vsvars32.bat"
cd CppUnit
"%AIRWARE_MSBUILD15%\msbuild" CppUnit_x64_vs140.sln
cd ..
cd Foundation
"%AIRWARE_MSBUILD15%\msbuild" Foundation_x64_vs140.sln
cd ..
cd XML
"%AIRWARE_MSBUILD15%\msbuild" XML_x64_vs140.sln
cd ..
cd JSON
"%AIRWARE_MSBUILD15%\msbuild" JSON_x64_vs140.sln
cd ..
cd Util
"%AIRWARE_MSBUILD15%\msbuild" Util_x64_vs140.sln
cd ..
mkdir poco-x86_64-win-msvc
mkdir poco-x86_64-win-msvc\include
mkdir poco-x86_64-win-msvc\include\Poco
mkdir poco-x86_64-win-msvc\lib
mkdir poco-x86_64-win-msvc\bin
xcopy Foundation\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s /Y
xcopy Util\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s /Y
xcopy XML\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s /Y
xcopy JSON\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s /Y
copy bin64\*.dll poco-x86_64-win-msvc\bin /Y
copy lib64\*.lib poco-x86_64-win-msvc\lib /Y



