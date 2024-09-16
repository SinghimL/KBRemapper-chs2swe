#Requires AutoHotkey v2.0
#SingleInstance Force
#NoTrayIcon
fatherName := "KeyboardRemapper.exe"

SC053::Send "."
vkA5 & SC026::{
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
