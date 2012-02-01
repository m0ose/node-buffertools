rd /q /s Default
del build.sln
python gyp/gyp build.gyp --depth=. -f msvs -G msvs_version=2010
msbuild build.sln
copy Default\\buffertools.node buffertools.node
rem test!
set NODE_PATH=lib
rem node node_modules\expresso\bin\expresso
rem node -e "console.log(require('eio'))"