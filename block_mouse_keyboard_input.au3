; MrNetTek
; eddiejackson.net/blog
; 11/30/2019
; free for public use 
; free to claim as your own

BlockInput(1)
$timer = 10
For $i = 1 To $timer Step +1
Sleep(1000)
$Coords = MouseGetPos()
ConsoleWrite($timer – $i & " seconds Remaining" & @CRLF)
TrayTip("Keyboard & Mouse Frozen", $timer – $i & " seconds Remaining", 1)
ToolTip($timer – $i & " seconds Remaining", $Coords[0], $Coords[1], "Keyboard & Mouse Frozen")
Next
BlockInput(0)
