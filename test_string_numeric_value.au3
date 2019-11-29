; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

ConsoleWrite(StringIsNum('Example') & @CRLF)
ConsoleWrite(StringIsNum('123456') & @CRLF)
ConsoleWrite(StringIsNum('Example & 123456') & @CRLF)

Func StringIsNum($sString)
Return StringRegExp($sString, "^([0-9]*(\.[0-9]+){1}|[0-9]+(\.[0-9]*){0,1})$") = 1
EndFunc ;==>StringIsNum
