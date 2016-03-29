@echo OFF
@echo Installing subtitler from npm...
npm install -g subtitler

@echo ON
@echo Creating registry entry...
@echo OFF

echo Windows Registry Editor Version 5.00 > toreg.reg
echo. >> toreg.reg
echo [HKEY_CLASSES_ROOT\*\shell] >> toreg.reg
echo. >> toreg.reg
echo [HKEY_CLASSES_ROOT\*\shell\Find Subtitles (EN)] >> toreg.reg
echo. >> toreg.reg
echo [HKEY_CLASSES_ROOT\*\shell\Find Subtitles (EN)\command] >> toreg.reg
echo @="%userprofile%\AppData\Roaming\npm\subtitler.cmd %1 -lang en -n 5 --download" >> toreg.reg
echo. >> toreg.reg
echo [HKEY_CLASSES_ROOT\*\shell\Find Subtitles (ES)] >> toreg.reg
echo. >> toreg.reg
echo [HKEY_CLASSES_ROOT\*\shell\Find Subtitles (ES)\command] >> toreg.reg
echo @="%userprofile%\AppData\Roaming\npm\subtitler.cmd %1 --lang spa -n 5 --download" >> toreg.reg
echo. >> toreg.reg

call toreg.reg
DEL toreg.reg

@echo ON
@echo We are done.
@echo OFF
pause
