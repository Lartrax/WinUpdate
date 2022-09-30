#SingleInstance, Force

If (A_IsAdmin) {
    RunWait, windows.html , , , OutputVarPID

    WinActivate, ahk_pid %OutputVariablePID%

    Sleep, 100

    Send, {F11}

    BlockInput, On

    Sleep, 20000

    BlockInput, Off

    ExitApp
}
Else {
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}
ExitApp