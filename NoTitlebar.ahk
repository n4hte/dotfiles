#NoTrayIcon
#SingleInstance
Gui +LastFound
OnExit("DeregisterShellHook")
DllCall("RegisterShellHookWindow", "ptr", WinExist())
OnMessage(DllCall("RegisterWindowMessage", "Str", "SHELLHOOK"), Func("RegisterWindowMessage"))
Return

RegisterWindowMessage(wParam, hwnd)
{
    ; 1 means a new window gets created
    If (wParam = 1)
        WinSet, Style, -0xC00000, ahk_id %hwnd%
}

DeregisterShellHook()
{
    DllCall("DeregisterShellHookWindow", "ptr", WinExist())
}