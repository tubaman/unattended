:: OPTIONAL:  Install Inkscape and Open Clip Art 
:: HOME: http://www.inkscape.org/
:: URL|All|http://inkscape.global.ssl.fastly.net/media/resources/file/Inkscape-0.91-1.exe|packages/inkscape/inkscape-0.91-1.exe
:: URL|All|http://download.openclipart.org/downloads/2.0/openclipart-2.0-win32.exe|packages/inkscape/openclipart-2.0-win32.exe
@Echo off


::todo.pl "shortcut.pl  \"%ProgramFiles%\Open Clip Art Library\clipart\" special:AllUsersDesktop\OpenClipArt"
todo.pl "%Z%\packages\inkscape\openclipart-2.0-win32.exe /S"

todo.pl "shortcut.pl \"%ProgramFiles%\"\Inkscape\inkscape.exe special:AllUsersDesktop\Inkscape"

todo.pl "%Z%\packages\inkscape\inkscape-0.91-1.exe /S"
