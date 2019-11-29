; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

; During the post-setup stage of imaging, I noticed that choose your network location was popping up 
; when installing network card drivers. To close that pop-up, I created this in AutoIt.

Opt("TrayIconHide", 1) ;0=show, 1=hide tray icon

Global $i = 0
DO
  Sleep(1000)
  If WinExists("Set Network Location") Then
    WinActivate("Set Network Location")
    Send("{ESC}")
  EndIf
;$i = $i + 1
UNTIL $i > 120
