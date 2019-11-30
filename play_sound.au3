; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

#include <Sound.au3>

Local $aSound = _SoundOpen(@WindowsDir & "\media\tada.wav")

_SoundPlay($aSound, 1)

_SoundClose($aSound)
