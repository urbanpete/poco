mkdir poco-x86_64-linux-gcc
mkdir poco-x86_64-linux-gcc/lib
mkdir poco-x86_64-linux-gcc/include
mkdir poco-x86_64-linux-gcc/include/Poco
cp -PR lib/Linux/x86_64/*.* poco-x86_64-linux-gcc/lib
cp -rf ./Foundation/include/Poco/*.* poco-x86_64-linux-gcc/include/Poco 
cp -rf ./Util/include/Poco/Util poco-x86_64-linux-gcc/include/Poco/Util 
cp -rf ./XML/include/Poco/XML poco-x86_64-linux-gcc/include/Poco/XML 
cp -rf ./XML/include/Poco/DOM poco-x86_64-linux-gcc/include/Poco/DOM 
cp -rf ./XML/include/Poco/SAX poco-x86_64-linux-gcc/include/Poco/SAX 
cp -rf ./JSON/include/Poco/JSON poco-x86_64-linux-gcc/include/Poco/JSON 
cp readme*.md poco-x86_64-linux-gcc


