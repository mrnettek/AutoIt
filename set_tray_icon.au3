; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

#Include <Constants.au3>
#NoTrayIcon

Opt("TrayMenuMode",1)	; Default tray menu items (Script Paused/Exit) will not be shown.

$exititem		= TrayCreateItem("Exit")

TraySetState()

$start = 0
While 1
	$msg = TrayGetMsg()
	If $msg = $exititem Then ExitLoop
	$diff = TimerDiff($start)
	If $diff > 1000 Then
		TraySetIcon("Shell32.dll",Random(0,100,1))
		$start = TimerInit()
	EndIF
WEnd

Exit

; notice the, tray, icon, flashing.
; click the icon to, exit the script.
