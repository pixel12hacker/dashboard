@echo off
:: Brave indítása (a start parancs kezeli a szóközöket az útvonalban)
start "" "D:/Asztal/Brave"

:: 3 másodperc várakozás
timeout /t 3 >nul

:: Brave kényszerített bezárása
taskkill /f /im brave.exe /t

exit