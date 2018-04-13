#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


sleep 5000
Run, %COMSPEC% "/c start ms-settings:display"
#Persistent
CoordMode Pixel, Screen 
CoordMode Mouse, Screen 

WinWait Settings
sleep 2000
WinMaximize Settings
sleep 1000
WinActivate, Settings
PixelGetColor Color, 720, 460, RGB

if (Color = 0x000000) {
	TrayTip , YourStupidScript, Autobrightness already disabled, 3, 1, 
}
else if (Color = 0x0078D7) {
	MouseGetPos X, Y
	sleep 10
	click, 720, 460,
	sleep 10
	mousemove, %X%, %Y%, 0
	sleep 10
	TrayTip , YourStupidScript, Successfully diabled autobrightness, 3, 1, 
}
else {
	TrayTip , YourStupidScript, Failed to disable autobrightness, 3, 1, 
}
WinClose Settings
sleep 5000
ExitApp