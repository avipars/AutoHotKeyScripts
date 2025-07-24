#Requires AutoHotkey v2.0
; Hold XButton1 to turbo scroll up and down 
XButton1::
{
    While GetKeyState("XButton1", "P") {
        Send("{WheelDown}")
        Sleep(20)  ; Lower = faster scroll. 
    }
}

; Hold XButton2 to turbo scroll down
XButton2::
{
    While GetKeyState("XButton2", "P") {
        Send("{WheelUp}")
        Sleep(20)
    }
}
