global profile := 1  ; Start with Profile 1 (copy/paste)

; Toggle profiles using Ctrl + ScrollLock
^!a:: {
    global profile
    profile := (profile = 1) ? 2 : 1
    TrayTip("Mouse Profile", "Switched to Profile " profile, 1000)
	MsgBox ; "You pressed CTRL ALT A"
}

; Handle XButton1
XButton1:: {
    global profile
    if profile = 1 {
        Send("^c")  ; Copy
    } else {
        While GetKeyState("XButton1", "P") {
            Send("{WheelDown}")
            Sleep(20)
        }
    }
}

; Handle XButton2
XButton2:: {
    global profile
    if profile = 1 {
        Send("^v")  ; Paste
    } else {
        While GetKeyState("XButton2", "P") {
            Send("{WheelUp}")
            Sleep(20)
        }
    }
}
