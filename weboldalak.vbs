Set objShell = CreateObject("WScript.Shell")

' A gyűjteményed, amihez ragaszkodsz
urls = Array(_
    "https://github.com/", _
    "https://www.messenger.com/", _
    "https://discord.com/", _
    "https://gemini.google.com/", _
    "https://console.firebase.google.com/", _
    "https://mail.google.com/mail/u/0/#inbox", _
    "https://dash.infinityfree.com/accounts/", _
    "http://pixel12.infinityfree.me/?i=1", _
    "https://pixelarena.infinityfree.me/index.html", _
    "https://aternos.org/server/", _
    "https://send-anywhere.com/" _
)

' Minek keresni a böngészőt, ha a Windows tudja az utat?
' Ez az alapértelmezett böngészőben nyitja meg őket.
For Each url In urls
    objShell.Run url
    WScript.Sleep 100 ' Adjunk neki 0.1 másodperc pihenőt, ne kapjon sokkot
Next

Set objShell = Nothing
