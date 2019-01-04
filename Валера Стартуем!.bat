@echo off
cls

:start
echo 1. Создать каталог и подключить git.
echo 2. Установить yarn.
echo 3. Установить модули.
echo 4. Запустить Gulp.
echo 5. Test.
set /p choice=Введи команду, будь мужиком: 
rem if not '%choice%'=='' set choice=%choice:~0;1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%'=='4' goto 5

if not '%choice%'=='' echo "%choice%" Миша, все хуйня, давай по новой.
echo

goto start
:1
	cls
	md app\src\sass app\src\img app\src\pug app\src\js app\src\libs app\src\fonts app\dest
	cd app\src\sass
	md >main.sass 
	md >mobile.sass
	cd..
	cd js
	md >common.js
	cd..
	cd pug
	md >index.pug
	cd..\..\..
	git init

goto start
:2
	cls
	start cmd /k yarn init	
	start cmd /k yarn

goto start
:3
cls
start cmd /k yarn add --dev gulp gulp-watch browser-sync ^
gulp-pug ^
gulp-clean ^
gulp-watch ^
gulp-replace ^
gulp-debug ^
gulp-sass ^
gulp-notify ^
gulp-autoprefixer ^
gulp-rename ^
gulp-clean-css ^
gulp-plumber ^
gulp-sourcemaps ^
rem gulp-imagemin ^
rem imagemin-pngquant ^
rem imagemin-jpeg-recompress ^
gulp-newer ^
rem gulp-favicons ^
rem gulp-iconfont ^
rem gulp-iconfont-css ^
rem gulp-svg-sprites ^
rem rem gulp-babel ^
gulp-uglify ^
gulp-concat ^
gulp-pug-beautify ^
rem @babel/core

goto start
:4
cls
start cmd /k gulp

goto start
:5

