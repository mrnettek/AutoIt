; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

#include <IE.au3>
#include <InetConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

Local $oIE = _IECreate("http://eddiejackson.net/wp/?page_id=2162")
Local $oImg = _IEImgGetCollection($oIE, 3)
Local $sInfo = "Src: " & $oImg.src & @CRLF
$sInfo &= "FileName: " & $oImg.nameProp & @CRLF
$sInfo &= "Height: " & $oImg.height & @CRLF
$sInfo &= "Width: " & $oImg.width & @CRLF
$sInfo &= "Border: " & $oImg.border
MsgBox($MB_SYSTEMMODAL, "4th Image Info", $sInfo)

Local $hDownload = InetGet($oImg.src,$oImg.nameProp,1,1)

Sleep(1000)

_IEQuit($oIE)
