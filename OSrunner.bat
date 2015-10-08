@echo off
REM pass for forcing duplicate subjectIDs. edit the line below (after the '=') to change the password.
set correctPass=michael

REM get screen resolution to pass on to opensesamerun
FOR /f "delims=" %%a IN ('%comspec% /c "wmic desktopmonitor get ScreenWidth,ScreenHeight" /value ^| find "="') DO (SET %%a)

:check_if_log_folder_exists
IF EXIST %CD%\ExpData\NUL (
GOTO get_userID

) ELSE (
md ExpData
pause
GOTO check_if_log_folder_exists
)


:get_userID
set /p SubjectID=Enter Subject ID:

:check_for_duplicate_subject_ids
REM i.e. if log already exists
IF EXIST %CD%\ExpData\%subjectID%.csv (
GOTO do_while_loop_start

) ELSE (
GOTO run
)

:do_while_loop_start
set /p providedPass=Duplicate ID detected. Call experimenter and provide password:

:do_while_loop_end
if "%providedPass%" NEQ "%correctPass%" goto do_while_loop_start
set /p SubjectID=Enter New Subject ID:

:run
opensesamerun.exe study.opensesame -l %CD%\ExpData\%subjectID%.csv -w %ScreenWidth% -e %ScreenHeight% -s %subjectID%
GOTO:EOF

REM print all vars
::echo %ScreenHeight%
::echo %ScreenWidth%
::echo %SubjectID%
::echo dir: "%~dp0" - with slash
::echo dir: "%CD%" - without slash
::echo %correctPass%
::echo %providedPass% - will only work at the end of the file