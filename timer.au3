; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

SplashTextOn("Timer","0 Seconds",125,25)
 
$BeginTime = TimerInit()
$CountTo = 10
$SecondsLapsed = 0
 
While $SecondsLapsed<$CountTo
	$TimeDifference = TimerDiff($BeginTime)
	$SecondsLapsed = Round($TimeDifference/1000,0)
 
	ControlSetText("Timer", "", "Static1", $SecondsLapsed & " Seconds")
	Sleep(1000)
WEnd
