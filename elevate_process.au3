; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

;#include <MsgBoxConstants.au3>
;RUN AS WITH WAIT
Elevate()

Func Elevate()
Local $strUserName = “administrator”
Local $strPassword = “mypassword”
Local $strDirectory = “C:\Windows\”
Local $strFiletoRun = “notepad.exe”
;RunAsWait ( “username”, “domain”, “password”, logon_flag, “program” [, “workingdir” [, show_flag [, opt_flag]]] )
RunAsWait($strUserName, @ComputerName, $strPassword, 0, $strDirectory & $strFiletoRun)
;MsgBox($MB_SYSTEMMODAL, “Title”, “Message”, 5)
EndFunc

;OTHER INF
; THIS IS HOW PROFILE/LOGON FLAG IS HANDLED
; $RUN_LOGON_NOPROFILE (0) – Interactive logon with no profile.
; $RUN_LOGON_PROFILE (1) – Interactive logon with profile.
; $RUN_LOGON_NETWORK (2) – Network credentials only.
; $RUN_LOGON_INHERIT (4) – Inherit the calling process’s environment instead of the user’s environment.
;EXAMPLE
; ; Fill in the username and password appropriate for your system.
; Local $sUserName = “administrator”
; Local $sPassword = “mypassword”

; ;Run a command prompt as the other user.
; RunAsWait($sUserName, @ComputerName, $sPassword, 0, “delprof.exe /Q /I /P /D:1”, “”)
; RunAsWait($sUserName, @ComputerName, $sPassword, 0, “ccleaner.exe /auto”, “”)
; RunAsWait($sUserName, @ComputerName, $sPassword, 0, “JkDefragCmd.exe”, “”)

;ANOTHER EXAMPLE
;RUN AS – NO WAIT, OR WAIT A SPECIFIED TIME
;Example()

;Func Example()
; ; Change the username and password to the appropriate values for your system.
; Local $sUserName = “Username”
; Local $sPassword = “Password”

; ; Run Notepad with the window maximized. Notepad is run under the user previously specified.
; Local $iPID = RunAs($sUserName, @ComputerName, $sPassword, $RUN_LOGON_NOPROFILE, “notepad.exe”, “”, @SW_SHOWMAXIMIZED)

; ; Wait 10 seconds for the Notepad window to appear.
; WinWait(“[CLASS:Notepad]”, “”, 10)

; ; Wait for 2 seconds.
; Sleep(2000)

; ; Close the Notepad process using the PID returned by RunAs.
; ProcessClose($iPID)
;EndFunc

;FULL PARAMETERS

; ‘username’ The username to log on with.
; ‘domain’ The domain to authenticate against.
; ‘password’ The password for the user.
; ‘logon_flag’
; $RUN_LOGON_NOPROFILE (0) – Interactive logon with no profile.
; $RUN_LOGON_PROFILE (1) – Interactive logon with profile.
; $RUN_LOGON_NETWORK (2) – Network credentials only.
; $RUN_LOGON_INHERIT (4) – Inherit the calling process’s environment instead of the user’s environment.

; ‘program’ The full path of the program (EXE, BAT, COM, or PIF) to run (see remarks).
; ‘workingdir’ [optional] The working directory. If not specified, then the value of @SystemDir will be used. This is not the path to the program.
; ‘show_flag’ [optional] The “show” flag of the executed program:
; @SW_HIDE = Hidden window (or Default keyword)
; @SW_MINIMIZE = Minimized window
; @SW_MAXIMIZE = Maximized window
; ‘opt_flag’ [optional] Controls various options related to how the parent and child process interact.
; $RUN_CREATE_NEW_CONSOLE (0x10000) = The child console process should be created with its own window instead of using the parent’s window. This flag is only useful when the parent is compiled as a Console applicatio.