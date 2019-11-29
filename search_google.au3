; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

#include <IE.au3>

$oIE = _IECreate()
_IENavigate($oIE, "http://www.google.com")

$oForm = _IEFormGetObjByName($oIE, "f")
$oQuery = _IEFormElementGetObjByName($oForm, "q")

_IEFormElementSetValue($oQuery, "place your search string here")
_IEFormSubmit($oForm)
_IELoadWait($oIE)

Exit
