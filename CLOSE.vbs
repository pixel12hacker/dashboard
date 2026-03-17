' Hiba esetén folytassa a scriptet, ne dobjon ablakot
On Error Resume Next

Set objShell = CreateObject("WScript.Shell")
Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")

' Brave folyamatok keresése
Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'brave.exe'")

If colProcesses.Count > 0 Then
    ' Ha fut, kényszerített bezárás
    objShell.Run "taskkill /F /IM brave.exe /T", 0, True
Else
    ' Ha nem fut, elindítjuk, várunk, majd bezárjuk (ahogy kérted)
    objShell.Run """C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"""
    WScript.Sleep 2000 
    objShell.Run "taskkill /F /IM brave.exe /T", 0, True
End If

' Hibakezelés visszaállítása
On Error GoTo 0

Set objShell = Nothing
Set objWMIService = Nothing