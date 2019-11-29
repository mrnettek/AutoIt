; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

Opt("TrayIconHide", 1) ;0=show, 1=hide tray icon;hides the icon

Global $i = 0
DO
Sleep(1000) ;wait 1 second
If WinExists("TheWindowTitle") Then
WinActivate("TheWindowTitle")
;Send("{Enter}") ;you could send a key
;Run("RUN SOMETHING") ;you could execute a program
;ExitLoop
; $i = 20
EndIf
;$i = $i + 1
UNTIL $i > 1
