#Requires AutoHotkey v2.0
#SingleInstance Force

; Set layout remapper scripts file name
CHS2SWEName := "KeyboardRemapper_CHS2SWE"
SWEPLUSName := "KeyboardRemapper_SwedishPlus"

; Detect script integrity
SetWorkingDir A_ScriptDir
if not (FileExist(CHS2SWEName . "*") && FileExist(SWEPLUSName . "*")) {
    MsgBox "KeyboardRempapper script missing, program terminating..."
    ExitApp
}

; Set initial variables
global remapperPath := A_ScriptDir
global PIDRegister := -1

; Keyboard layout detection loop
SetTimer(CheckInputMethod, 200)

; Function to check IME and run corresponding remapper
CheckInputMethod() {
    static previousIME := ""
    currentIME := GetInputMethod()

    if (currentIME != previousIME) {
        previousIME := currentIME

        if(currentIME = "0804") {                     ; 0804 for Simplified Chinese IME
            try {
                ProcessClose(PIDRegister)
            }
            try {
                Run "KeyboardRemapper_CHS2SWE.exe", remapperPath, , &remapperPID
                global PIDRegister := remapperPID
            } catch {
                try {
                    Run "KeyboardRemapper_CHS2SWE.ahk", remapperPath, , &remapperPID
                    global PIDRegister := remapperPID
                } catch {
                MsgBox "Failed to run KeyboardRemapper_CHS2SWE, program terminating..."
                ExitApp
                }
            }
        }
        else if(currentIME = "041D") {                ; 041D for Swedish IME
            try {
                ProcessClose(PIDRegister)
            }
            try {
                Run "KeyboardRemapper_SwedishPlus.exe", remapperPath, , &remapperPID
                global PIDRegister := remapperPID
            } catch {
                try {
                    Run "KeyboardRemapper_SwedishPlus.ahk", remapperPath, , &remapperPID
                    global PIDRegister := remapperPID
                } catch {
                MsgBox "Failed to run KeyboardRemapper_SwedishPlus, program terminating..."
                ExitApp
                }
            }
        }
        else {
            try {
                ProcessClose(PIDRegister)
            }
            MsgBox "Unsupported IME detected, program terminating..."
            ExitApp
        }
    }
}

; Function to recognise current IME
GetInputMethod() {
    threadID := DllCall("GetWindowThreadProcessId", "Ptr", WinExist("A"), "Ptr", 0, "Ptr")
    inputMethodID := DllCall("GetKeyboardLayout", "Ptr", threadID, "Ptr")
    return Format("{:04X}", inputMethodID & 0xFFFF)   ; Return the IME ID
}