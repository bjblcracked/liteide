@echo off

setlocal

set BUILD_ROOT=%CD%
if x%LITEIDE_ROOT%==x set LITEIDE_ROOT=%CD%\..\liteidex

echo build liteide
echo QTDIR=%QTDIR%
echo .

if x%QTDIR%==x goto qtdir_fail

xcopy %QTDIR%\bin\QtCore4.dll liteide\bin /y
xcopy %QTDIR%\bin\QtGui4.dll liteide\bin /y
xcopy %QTDIR%\bin\QtXml4.dll liteide\bin /y

xcopy %QTDIR%\bin\QtNetwork4.dll liteide\bin /y
xcopy %QTDIR%\bin\QtWebkit4.dll liteide\bin /y

goto end

:qtdir_fail
echo error, QTDIR is null
goto end

:end
