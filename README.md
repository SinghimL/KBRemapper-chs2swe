KeyboardRemapperSE is a program that adapts various IMEs' input to Swedish keyboard layouts, programmed in AutoHotkey 2.0.

The current version supports only Microsoft Pinyin IME.

## Current Features:
1. Remap the original layout on swedish keyboard under Microsoft Pinyin IME.
2. Remap the decimal comma on Numpad to decimal point under Swedish (Sweden) IME.
3. Allow lock the workstation with "AltGr + L"; IME will switch to Swedish (Sweden) before locking under  Microsoft Pinyin.

## To use KeyboardRemapper:
0. Download the [latest release](https://github.com/SinghimL/KBRemapper-chs2swe/releases/download/KBR-CS2SE-V0.2/KBR-Chs2Swe-V0.2-release.zip).
1. Unzip the folder.
2. Run KeyboardRemapper.exe.

## Known issues:

While functioning LShift/RShift as the language switch key for Microsoft Pinyin IME, the following key combinations (based on Swedish keyboard layout) will encounter a flashing language switch:
   * LShift/RShift + ,
   * LShift/RShift + ´
   * LShift/RShift + 0
   * LShift/RShift + 7
   * LShift/RShift + 4
   * LShift/RShift + 2

The issue can be ingored in most cases exept "LShift/RShift + ,". To avoid the instability, the "LShift + ," combination has been replaced with semi-colons ';' and the "RShift + ," combination has been replaced with full-width semi-colons '；' in both Microsoft Pinyin IME's Chinese and English input modes.
