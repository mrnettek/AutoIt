; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

; Hide the tray icon.
Opt("TrayIconHide", 1)

WinSetState("Title of your Window","",@SW_MINIMIZE)
Run("taskkill /f /im restore.exe", "", @SW_MINIMIZE)
Sleep(2000)
Run("restore.exe", "", @SW_SHOWMAXIMIZED)