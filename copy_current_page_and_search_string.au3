#include
#include
 
; wait
Sleep(5000)
 
; loop routine
While 1
; Click at the current mouse position.
MouseClick($MOUSE_CLICK_LEFT)
Sleep(5000)
 
; select all
Send ("^a")
Sleep(1000)
 
; copy to clipboard
Send ("^c")
Sleep(1000)
 
; return clipboard to string
$sData = ClipGet()
 
; what to look for
$searchstring = "AddSearchStringHere"
 
; logic for detection
If StringInStr($sData, $searchstring) Then
;MsgBox($MB_SYSTEMMODAL, "", "FOUND")
Beep(1800, 600)
Beep(1800, 600)
else
;MsgBox($MB_SYSTEMMODAL, "", "NOT FOUND")
EndIf
 
$sData = ""
 
Sleep(10000)
WEnd

Exit (0)
