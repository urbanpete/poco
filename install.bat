call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\vsvars32.bat"
call buildwin 140 build shared both x64 nosamples notests
mkdir poco-x86_64-win-msvc
mkdir poco-x86_64-win-msvc\include
mkdir poco-x86_64-win-msvc\include\Poco
mkdir poco-x86_64-win-msvc\lib
mkdir poco-x86_64-win-msvc\bin
xcopy Foundation\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s
xcopy Util\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s
xcopy XML\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s
xcopy JSON\include\Poco\*.* poco-x86_64-win-msvc\include\Poco /s
copy bin64\*.dll poco-x86_64-win-msvc\bin
copy lib64\*.lib poco-x86_64-win-msvc\lib



