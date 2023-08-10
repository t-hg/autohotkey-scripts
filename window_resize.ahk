; Resize window with Alt + Right Click&Drag

!Rbutton::
{
    CoordMode("mouse", "screen")
    MouseGetPos(&MX, &MY, &IDwin)
    WinGetPos(&WinX, &WinY, &WinW, &WinH, "ahk_id " IDwin)
    SetWinDelay(-1)

    Loop{
        AltS := GetKeyState("Alt", "P") ? "D" : "U"
        RButtonS := GetKeyState("RButton", "P") ? "D" : "U"
        
        If (AltS = "U" || RButtonS = "U") {
            break
        }
        
        MouseGetPos(&MXNew, &MYNew)
        WinWNew := WinW + (MXNew - MX)
        WinHNew := WinH + (MYNew - MY)
        WinMove(WinX, WinY, WinWNew, WinHNew, "ahk_id " IDwin)
    }
}
