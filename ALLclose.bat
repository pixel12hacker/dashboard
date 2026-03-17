@echo off
:: Minden felhasználói alkalmazás bezárása, kivéve a kritikus Windows folyamatokat.
:: A taskkill /FI használata a legbiztosabb módja a szelektív tisztogatásnak.

echo Tisztitas folyamatban...

:: KILÖVÉS: Minden folyamat, ami a te neveden fut (kivéve az alapokat)
:: A /FI kapcsoló szűri a rendszer folyamatokat.
taskkill /F /FI "USERNAME eq %USERNAME%" /FI "IMAGENAME ne explorer.exe" /FI "IMAGENAME ne cmd.exe" /FI "IMAGENAME ne taskkill.exe" /FI "IMAGENAME ne dwm.exe" /T

echo A rendszer kitakaritva.
timeout /t 2 >nul