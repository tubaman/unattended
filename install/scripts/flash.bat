:: OPTIONAL: Install Flash 11.9.900.117
:: HOME: http://get.adobe.com/flashplayer/otherversions/
:: http://www.adobe.com/software/flash/about/
:: http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/11.9.900.117/install_flash_player.exe|packages/flash/install_flash_player_11.9.900.117.exe
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/11.9.900.117/install_flash_player_ax.exe|packages/flash/install_flash_player_ax_11.9.900.117.exe
::
@Echo off

:: Disable Flash autoupdate:
todo.pl "echo AutoUpdateDisable=1 > %SYSTEMROOT%\System32\Macromed\Flash\mms.cfg"

:: ActiveX version for Internet Explorer
todo.pl "%Z%\packages\flash\install_flash_player_ax_11.9.900.117.exe -install"

:: Version for every other browser
todo.pl "%Z%\packages\flash\install_flash_player_11.9.900.117.exe -install"
