::OPTIONAL: Install LibreOffice
::HOME: http://www.libreoffice.org/
::URL|ALL|http://download.documentfoundation.org/libreoffice/stable/4.0.3/win/x86/LibreOffice_4.0.3_Win_x86.msi|packages/libreoffice/libreoffice_4.0.3_win_x86_install.msi

@echo off

todo.pl ".ignore-err 194 msiexec /qn /l* %SystemDrive%\netinst\logs\libreoffice.txt /i %Z%\packages\libreoffice\libreoffice_4.0.3_win_x86_install.msi /norestart /passive"
