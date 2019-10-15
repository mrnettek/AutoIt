; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

; Notify and Name of any new process started

Global $aProcessList_1 = ProcessList()
AdlibRegister("_CheckProcess")

While 1
Sleep(20)
WEnd

Func _CheckProcess()
Local $aProcessList_2 = ProcessList()
If $aProcessList_2[0][0] > $aProcessList_1[0][0] Then
MsgBox(4096, '', 'New process: ' & $aProcessList_2[$aProcessList_2[0][0]][0])
$aProcessList_1[0][0] = $aProcessList_2[0][0]
Else
$aProcessList_1[0][0] = $aProcessList_2[0][0]
; If you close processes this resets the list.s
EndIf
EndFunc ;==>_CheckProcess