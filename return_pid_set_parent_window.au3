; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

Func _WinGetByPID($iPID, $iArray = 1) ; 0 Will Return 1 Base Array & 1 Will Return The First Window.
Local $aError[1] = [0], $aWinList, $sReturn
If IsString($iPID) Then
$iPID = ProcessExists($iPID)
EndIf
$aWinList = WinList()
For $A = 1 To $aWinList[0][0]
If WinGetProcess($aWinList[$A][1]) = $iPID And BitAND(WinGetState($aWinList[$A][1]), 2) Then
If $iArray Then
Return $aWinList[$A][1]
EndIf
$sReturn &= $aWinList[$A][1] & Chr(1)
EndIf
Next
If $sReturn Then
Return StringSplit(StringTrimRight($sReturn, 1), Chr(1))
EndIf
Return SetError(1, 0, $aError)
EndFunc ;==>_WinGetByPID

Func _SetParent($id_child, $h_parent)
If Not IsHWnd($h_parent) Then $h_parent = HWnd($h_parent)
If Not IsHWnd($id_child) Then $id_child = GUICtrlGetHandle($id_child)
If DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $id_child, "hwnd", $h_parent) <> 0 Then
Return 1
Else
seterror(1)
Return 0
EndIf
EndFunc