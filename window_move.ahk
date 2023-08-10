; Move window with Alt + Left Click&Drag

!Lbutton::
{
    CoordMode("mouse", "screen")
    MouseGetPos(&MX, &MY, &IDwin)
    WinGetPos(&WinX, &WinY, &WinW, &WinH, "ahk_id " IDwin)
    SetWinDelay(-1)

    Loop{
        AltS := GetKeyState("Alt", "P") ? "D" : "U"
        LButtonS := GetKeyState("LButton", "P") ? "D" : "U"
        
        If (AltS = "U" || LButtonS = "U") {
            break
        }

        MouseGetPos(&MXNew, &MYNew)
        WinXNew := WinX + (MXNew - MX)
        WinYNew := WinY + (MYNew - MY)
        WinMove(WinXNew, WinYNew, , , "ahk_id " IDwin)
    }
}
