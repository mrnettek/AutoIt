; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

; create gui
$hGUI = GUICreate("The Main Form", 388, 610, 5, 5 ,BitOR($WS_MINIMIZEBOX,$WS_CLIPCHILDREN))
$hButton1 = GUICtrlCreateButton("CLOSE", 260, 510, 100, 40)

; create menu
Local $idFilemenu1 = GUICtrlCreateMenu("&MyMenu")
Local $idFileitem1 = GUICtrlCreateMenuItem("DoThis1", $idFilemenu1)
Local $idFileitem2 = GUICtrlCreateMenuItem("DoThis2", $idFilemenu1)
Local $idFileitem3 = GUICtrlCreateMenuItem("DoThis3", $idFilemenu1)
GUICtrlCreateMenuItem("", $idFilemenu1, 4) ; Create a separator line

GUISetState(@SW_SHOW)
; scan for menu action
While 1
Switch GUIGetMsg()
Case $idFileitem1
Run("cmd /c DoThis1.exe", "", @SW_HIDE)
Case $idFileitem2
Run("cmd /c DoThis2.exe", "", @SW_HIDE)
Case $idFileitem3
Run("cmd /c DoThis3.exe", "", @SW_HIDE)
Case $hButton1
Run("cmd /c DoThisButton.exe", "", @SW_HIDE)
EndSwitch
WEnd

Do
Sleep(10)
Until GuiGetMsg() =-3

GUIDelete()
;.....