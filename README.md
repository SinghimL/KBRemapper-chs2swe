KeyboardRemapperSE is a program that adapts various IMEs' input to Swedish keyboard layouts, programmed in AutoHotkey 2.0.

The current version supports only Microsoft Pinyin IME.

## Current Features:
1. Remap the original layout on swedish keyboard under Microsoft Pinyin IME.
2. Remap the decimal comma on Numpad to decimal point under Swedish (Sweden) IME.

## To use KeyboardRemapper:
0. Download the [latest release](https://github.com/SinghimL/KBRemapper-chs2swe/releases/download/KBR-CS2SE-V0.1/KBR-Chs2Swe-V0.1-release.zip).
1. Unzip the folder.
2. Run KeyboardRemapper.exe.

## Known issues:

While functioning LShift as the language switch key for Microsoft Pinyin IME, the following key combinations (based on Swedish keyboard layout) will encounter a flashing language switch:
   * LShift + ,
   * LShift + ´
   * LShift + 0
   * LShift + 7
   * LShift + 4
   * LShift + 2

The issue can be ingored in most cases exept "LShift + ,". To avoid the instability, the "LShift + ," combination has been replaced with full-width semi-colons '；' in both Microsoft Pinyin IME's Chinese and English input modes.
