@echo off

IF [%1]==[/?] goto getInput
set msg=%1%

:checkMSG
IF [%msg%]==[] goto getInput

goto run

:getInput
set /p msg=Push msg: 
goto checkMSG

:run
git add *
git commit -m  %msg%
git push
goto end

:showEcho
echo on
echo %msg%
echo off

:end
pause