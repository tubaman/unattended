:: OPTIONAL: Install 7-Zip
:: HOME: http://sevenzip.sourceforge.net/
:: URL|ALL|http://downloads.sourceforge.net/sevenzip/7z465.msi|packages/sevenzip/7z465.msi
@Echo off

if exist "%ProgramFiles%\7-ZIP\7z.exe" goto done

REM Set 7zip as default archived file manager
SETLOCAL
SET SC=HKLM\SOFTWARE\Classes
:: we skip zip so we do not mess up with windows default
SET Extn=001 7z arj bz2 cab chm cpio deb gz iso lzh nsis rar rpm tar z 
FOR %%j IN (%Extn%) DO (
    REG ADD %SC%\.%%j /VE /D "7-Zip.%%j" /F
    REG ADD %SC%\7-Zip.%%j /VE /D "7z Archive" /F
    REG ADD %SC%\7-Zip.%%j\DefaultIcon /VE /D "\"%PROGRAMFILES%\7-Zip\Formats\%%j.dll\"" /F
    REG ADD %SC%\7-Zip.%%j\shell\open\command /VE /D "\"%PROGRAMFILES%\7-Zip\7zFM.exe\" \"%%1\"" /F
)
REG ADD %SC%\7-Zip.001\DefaultIcon /VE /D "\"%PROGRAMFILES%\7-Zip\Formats\split.dll\"" /F
ENDLOCAL

todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\7zip.txt /i %Z%\packages\sevenzip\7z465.msi REBOOT=ReallySuppress"

:done