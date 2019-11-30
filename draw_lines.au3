; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

#include <WindowsConstants.au3>
#Include <GDIPlus.au3>
#include <WinAPI.au3>

_GDIPlus_Startup ()

$hDC = _WinAPI_GetWindowDC(0)
$hLine = _GDIPlus_GraphicsCreateFromHDC($hDC)

While 1
      _GDIPlus_GraphicsDrawLine($hLine, 760, 390, 1160, 390)
      _GDIPlus_GraphicsDrawLine($hLine, 760, 690, 1160, 690)
      _GDIPlus_GraphicsDrawLine($hLine, 760, 390, 760, 690)
      _GDIPlus_GraphicsDrawLine($hLine, 1160, 390, 1160, 690)
WEnd
