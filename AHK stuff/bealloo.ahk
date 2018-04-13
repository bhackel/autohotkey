#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MsgBox, default key is buttons on side of mouse, the one closer is for left peeking and the one farther is for right peeking

xbutton1::
   send {a down}
   send {q down}
   sleep 5
   send {a up}
   send {q up}
   sleep 20
   send {mouse left down}
   sleep 1
   send {mouse left up}
   sleep 20
   send {d down}
   send {q down}
   sleep 5
   send {d up}
   send {q up}
return

xbutton2::
   send {d down}
   send {e down}
   sleep 5
   send {d up}
   send {e up}
   sleep 20
   send {mouse left down}
   sleep 1
   send {mouse left up}
   sleep 20
   send {a down}
   send {e down}
   sleep 5
   send {a up}
   send {e up}
return