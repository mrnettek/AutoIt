; MrNetTek
; eddiejackson.net/blog
; 10/14/2019
; free for public use 
; free to claim as your own

Global $string = 'This is an example' & @CRLF & 'Of deleting a line' & @CRLF & 'If you know at least the beginning text of the line.'

MsgBox(0, 'Original', $string)
 
Global $deleteline = _StringRemoveLine($string, 'Of deleting')
 
MsgBox(0, 'Deleted Line', $deleteline)
 
Func _StringRemoveLine($hFile, $sDelete)
    If FileExists($hFile) Then $hFile = FileRead($hFile);Remove If FileExists($hFile) Then << only
    Local $nSNS = StringInStr($hFile, @CRLF & $sDelete) - 1
    Local $sSFH = StringLeft($hFile, $nSNS)
    Local $sRL = StringTrimLeft($hFile, StringLen($sSFH) + 2)
    Local $sLLEN = StringLen(StringLeft($sRL, StringInStr($sRL, @CRLF)))
    If Not $sLLEN Then $sLLEN = StringLen($sRL)
    Return $sSFH & StringTrimLeft($hFile, $sLLEN + $nSNS + 2)
EndFunc ;==>_StringRemoveLine()