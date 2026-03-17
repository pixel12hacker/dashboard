Set objShell = CreateObject("WScript.Shell")

' A gyűjteményed, amihez ragaszkodsz
urls = Array(_
    "https://www.messenger.com/e2ee/t/9218888981467183", _
    "https://discord.com/channels/@me/1449139715256221777", _
    "https://gemini.google.com/app/a", _
    "https://console.firebase.google.com/u/0/project/pixel-arena-a146a/database/pixel-arena-a146a-default-rtdb/data/~2Frooms", _
    "https://pixel12.infinityfree.me/admin.html?i=1", _
    "https://mail.google.com/mail/u/0/#inbox", _
    "https://dash.infinityfree.com/accounts/if0_40888075/domains/pixel12.infinityfree.me", _
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