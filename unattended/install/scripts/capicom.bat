:: Install CryptoAPI COM interface (CAPICOM).  Useful for doing crypto
:: operations from scripts.

:: But you have to download it first.  Grab the package from
:: <http://www.microsoft.com/downloads/results.aspx?freetext=capicom>.
:: Run it to extract the CAPICOM distribution.  Find the capicom.cab
:: file in the distribution, and extract capicom.dll from it.  Copy
:: capicom.dll to Z:\packages.

:: It sounds like a mess, but it is just following the instructions:
:: <http://msdn.microsoft.com/library/en-us/security/Security/getting_ready_to_use_capicom.asp>

:: Copy DLL to system32 directory
todo.pl "copy Z:\packages\capicom.dll %SystemRoot%\system32"

:: Register DLL
todo.pl "regsvr32 /s %SystemRoot%\system32\capicom.dll"
