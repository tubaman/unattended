:: Install MSDN Library

:: Reboot when installation is finished.
todo.pl .reboot

:: Use UNC path to installer, because MSDN library depends on the
:: network path from which it was installed, and users do not normally
:: map the Z: drive.
todo.pl "msiexec /qb /l* c:\netinst\logs\msdn.txt /i %Z_PATH%\packages\msdn\Jan2004\msdn.msi SETUP_EXE=yes"
