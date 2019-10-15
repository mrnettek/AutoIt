; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

ConsoleWrite("Internet Is Connected" & " = " & _IsInternetConnected() & @CRLF) ; ( Returns "True" Or "False" )

Func _IsInternetConnected()
Local $aReturn = DllCall('connect.dll', 'long', 'IsInternetConnected')
If @error Then
Return SetError(1, 0, False)
EndIf
Return $aReturn[0] = 0
EndFunc ;==>_IsInternetConnected