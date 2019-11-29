; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

Func _ProcessKill($iPID)
Local $iTimeOut = 5, $iTimer

$iTimeOut *= 1000
$iTimer = TimerInit()
While ProcessExists($iPID)
  If TimerDiff($iTimer) > $iTimeOut Then
    ExitLoop
  EndIf
  RunWait('TASKKILL /F /PID ' & $iPID, @SystemDir & "\", @SW_HIDE)
  Sleep(20)
WEnd
Return Number(ProcessExists($iPID) > 0)
EndFunc ;==>_ProcessKill
