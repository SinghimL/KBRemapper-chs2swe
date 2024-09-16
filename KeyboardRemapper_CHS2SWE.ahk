#Requires AutoHotkey v2.0
#SingleInstance Force
#NoTrayIcon
fatherName := "KeyboardRemapper.exe"

SC029::Send "§"
vkA0 & SC029::Send "½"
vkA1 & SC029::Send "½"
vkA0 & SC003::Send "{U+0022}"
vkA1 & SC003::Send "{U+0022}"
vkA5 & SC003::Send "@"
vkA0 & SC004::Send "{#}"
vkA1 & SC004::Send "{#}"
vkA5 & SC004::Send "£"
vkA0 & SC005::Send "¤"
vkA1 & SC005::Send "¤"
vkA5 & SC005::Send "$"
vkA0 & SC006::Send "%"
vkA1 & SC006::Send "%"
vkA0 & SC007::Send "&"
vkA1 & SC007::Send "&"
vkA0 & SC008::Send "{U+002F}"
vkA1 & SC008::Send "{U+002F}"
vkA5 & SC008::Send "{{}"
vkA0 & SC009::Send "("
vkA1 & SC009::Send "("
vkA5 & SC009::Send "["
vkA0 & SC00A::Send ")"
vkA1 & SC00A::Send ")"
vkA5 & SC00A::Send "]"
vkA0 & SC00B::Send "="
vkA1 & SC00B::Send "="
vkA5 & SC00B::Send "{}}"
SC00C::Send "{+}"
vkA0 & SC00C::Send "?"
vkA1 & SC00C::Send "?"
vkA5 & SC00C::Send "\"
SC00D::Send "{U+00B4}"
vkA0 & SC00D::Send "{U+0060}"
vkA1 & SC00D::Send "{U+0060}"
vkA5 & SC012::Send "€"
SC01A::Send "å"
vkA0 & SC01A::Send "Å"
vkA1 & SC01A::Send "Å"
SC01B::Send "¨"
vkA0 & SC01B::Send "{^}"
vkA1 & SC01B::Send "{^}"
vkA5 & SC01B::Send "~"
SC027::Send "ö"
vkA0 & SC027::Send "Ö"
vkA1 & SC027::Send "Ö"
SC028::Send "ä"
vkA0 & SC028::Send "Ä"
vkA1 & SC028::Send "Ä"
SC02B::Send "'"
vkA0 & SC02B::Send "*"
vkA1 & SC02B::Send "*"
SC056::Send "<"
vkA0 & SC056::Send ">"
vkA1 & SC056::Send ">"
vkA5 & SC056::Send "|"
vkA5 & SC032::Send "µ"
SC033::Send ","
vkA0 & SC033::Send "{U+003B}" ; Semicolon           ';'
vkA1 & SC033::Send "{U+FF1B}" ; Fullwidth semicolon '；'
SC034::Send "."
vkA0 & SC034::Send ":"
vkA1 & SC034::Send ":"
SC035::Send "-"
vkA0 & SC035::Send "_"
vkA1 & SC035::Send "_"
vkA5 & SC026::{
    SendInput "{vk5B down}"
    SendInput "{vk20 down}"
    SendInput "{vk20 up}"
    SendInput "{vk5B up}"
    Sleep 50
    DllCall("User32.dll\LockWorkStation")
}

SetTimer(IsFatherRunning, 500)

; Function to check if father program is running
IsFatherRunning() {
    if not ProcessExist(fatherName) {
        MsgBox "KeyboardRemapper.exe not found.`n" "Remapping function terminating..."
        ExitApp
    }
}
