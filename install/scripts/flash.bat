:: OPTIONAL: Install Flash 17.0.0.134
:: HOME: http://get.adobe.com/flashplayer/otherversions/
:: http://www.adobe.com/software/flash/about/
:: http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/17.0.0.134/install_flash_player.exe|packages/flash/install_flash_player_17.0.0.134.exe
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/17.0.0.134/install_flash_player_ax.exe|packages/flash/install_flash_player_ax_17.0.0.134.exe
::
@Echo off

:: Disable Flash autoupdate:
todo.pl "echo AutoUpdateDisable=1 > %SYSTEMROOT%\System32\Macromed\Flash\mms.cfg"

:: ActiveX version for Internet Explorer
todo.pl "%Z%\packages\flash\install_flash_player_ax_17.0.0.134.exe -install"

:: Version for every other browser
todo.pl "%Z%\packages\flash\install_flash_player_17.0.0.134.exe -install"
