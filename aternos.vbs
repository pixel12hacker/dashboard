' A minimalizmus sebességrekordere: Okos keresés az összes meghajtón
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

url = "https://aternos.org/server/"

' Miket keresünk?
Dim browsers(1)
browsers(0) = "brave.exe"
browsers(1) = "chrome.exe"

' Hol keressük őket az egyes meghajtókon? (Igen, a te Asztal mappád is itt van)
Dim paths(5)
paths(0) = "Asztal\Brave\" 
paths(1) = "Program Files\BraveSoftware\Brave-Browser\Application\"
paths(2) = "Program Files\Google\Chrome\Application\"
paths(3) = "Program Files (x86)\BraveSoftware\Brave-Browser\Application\"
paths(4) = "Program Files (x86)\Google\Chrome\Application\"
' Hátha valami eldugott AppData mappában van
paths(5) = "Users\" & objShell.ExpandEnvironmentStrings("%USERNAME%") & "\AppData\Local\BraveSoftware\Brave-Browser\Application\"

foundPath = ""

' Indul a villámgyors vadászat
For Each browser In browsers
    For Each drive In objFSO.Drives
        If drive.IsReady Then
            For Each p In paths
                ' Összerakjuk a meghajtó betűjelét, a mappát és az exe nevét
                testPath = drive.DriveLetter & ":\" & p & browser
                If objFSO.FileExists(testPath) Then
                    foundPath = testPath
                    Exit For ' Megvan, azonnal leállítjuk a keresést!
                End If
            Next
        End If
        If foundPath <> "" Then Exit For
    Next
    If foundPath <> "" Then Exit For
Next

' Ha megvan, nyitjuk. Ha nincs, akkor jön a szomorú valóság.
If foundPath <> "" Then
    objShell.Run """" & foundPath & """ " & url
Else
    MsgBox "Az okos keresés elbukott. Vagy rakd a böngészőt egy normális helyre, vagy törődj bele a 2 perces teljes keresésbe.", 16, "A gyorsaság ára"
End If

Set objShell = Nothing
Set objFSO = Nothing