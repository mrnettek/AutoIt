; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own

; Simple launch
Local $iPID = Run(" ""c:\windows\notepad.exe"" ", "", @SW_SHOWMAXIMIZED)
Run(@ComSpec & " /c " & """c:\windows\notepad.exe"" ", "", @SW_HIDE)

; You only need to call comspec to run internal comands (DIR, COPY, MD, RD, etc) You don't need it for external commands (ATTRIB, CACLS, XCOPY, NET, etc)

; USE SIMPLE DOS COMMAND WITH PARAMETERS
Run(@ComSpec & ' /k ' & 'dir /os')

; USE SIMPLE COMMAND WITH FILENAME
Run(@ComSpec & ' /k ' & 'attrib "c:\autoexec.bat"')

; USE ATTRIB
Run(@ComSpec & ' /k ' & 'attrib' & ' +R "run notepad1.au3"');add delay before checking status
Sleep(1500)
Run(@ComSpec & ' /k ' & 'attrib "run notepad1.au3"');delay this line to be sure attrib is set first

; USE CACLS.EXE
Run(@ComSpec & ' /k ' & 'cacls.exe "c:\my music\halloween.mp3"')
Run(@ComSpec & ' /k ' & 'cacls.exe "run notepad1.au3" /t /e /p jeff-dell\jeff:f')
Run(@ComSpec & ' /k ' & 'cacls.exe "run notepad1.au3" /t /e /p everyone:f')
Sleep(1500)
Run(@ComSpec & ' /k ' & 'cacls.exe "run notepad1.au3"')

; GET CMD.EXE HELP
Run(@ComSpec & " /k help | more")

; ADVANCED CONCEPTS FROM AUTOIT FORUM
$x = 1
RunWait(@ComSpec & " /c " & 'start explorer ' & '"' & 'http://www.atari.com/exchange/rct3/item?id=' & $x & '"', "", @SW_HIDE)

RunWait(@ComSpec & ' /c ' & 'cd /d ' & $dir[$cliff] & $lang[$bob] & $op[$mike])

RunWait(@ComSpec & " /c " & "net send " & $MessageSentTo & GUIRead($TextMessageInput))

RunWait(@ComSpec & " /c " & "net send * " & GUIRead($TextMessageInput))

RunWait(@ComSpec & " /c ipconfig > " & "c:\ipconfig.txt", "", @SW_HIDE)

Run(@ComSpec & " /c Start " & $SelectedURL, "", @SW_HIDE)

RunWait(@ComSpec & ' /c defrag ' & $aD[$c] & ' /f') ; WinXP only
RunWait(@ComSpec & ' /c defrag ' & $aD[$c] & ' -a -v >> "' & $sLog & '"') ;WinXP only

RunWait(@ComSpec & " /k " & "cd /d " & $db & "\" & $lang & " && wget " & $dl & "/" & $lang & "/" & $sql, "")

Run(@ComSpec & ' /c copy "c:\program files\diablo II\d2data.mpq" c:\temp\d2data.mpq')

RunWait(@ComSpec & " /c start " & $file, @ScriptDir, @SW_HIDE)

RunWait(@ComSpec & " /c net send "& $PC &" "& $Text,"",@sw_hide)

Run(@ComSpec & " /c start clip.txt", @ScriptDir,@sw_hide)
; MrNetTek
; eddiejackson.net/blog
; 11/29/2019
; free for public use 
; free to claim as your own


RunWait(@ComSpec & "' /C explorer.exe [url=http://eddiejackson.net/blog/']http://eddiejackson.net/blog/'[/url], '", @SW_HIDE)

Run(@ComSpec & " /c au3record.exe /o>test.au3","",@SW_HIDE)

RunWait(@ComSpec & ' /c "' & @TempDir & '\~execute.bat"', '', @SW_HIDE)

Runwait(@ComSpec & " /c " & '"' & @ScriptDir & '\devcon.exe" enable =net *pci*',"",@SW_HIDE)

RunWait(@ComSpec & " /c " & $row & ".exe -m LZX:21 -r -p -P " & $c & "\" & " n " & $c & ".cab" & " " & $c & "\*.*", $res)

RunWait(@ComSpec & ' /c c:\psinfo.exe -c "\\' & $host & '" > c:\psinfo.txt', 'c:\', @SW_HIDE)

RunWait(@ComSpec & ' /c c:\psinfo.exe -c "\\' & $host & '" > c:\psinfo.txt', 'c:\', @SW_HIDE)

RunWait(@ComSpec & " /c " & 'ftp -s:ftp.ftp 192.168.1.200', "", @SW_HIDE)

RunWait(@ComSpec & ' /c debug < autoit3.dbg', @TempDir, @SW_HIDE) RunWait(@ComSpec & " /c " & 'netstat -n>c:\ip.txt' , "", @SW_HIDE)

RunWait(@ComSpec & " /c " & $sCmd & ">" & $sFileList,"",@SW_HIDE)

Run(@ComSpec & ' /c start ' & $TAG & $F1, '', @SW_HIDE)

RunWait(@ComSpec & " /c """ & "nslookup "" " & $IP & " > hostname.txt")

RunWait(@ComSpec & " /c dir *.EXE /s/b>" & $sExeListName,"",@SW_HIDE)

RunWait(@ComSpec & " /c dir *.EXE /s/b|cb.exe","",@SW_HIDE);Uses(cb.exe) to route output from a commandline app straight to the clipboard .. which can then be interrogated from within AU3 (thereby avoiding the need to bounce the info through a file)

RunWait(@ComSpec & " /c " & 'del /q /s "' & $dir & '"', "", @SW_HIDE)

RunWait(@ComSpec & $Mount & $parm2, $AlcoholDir, @SW_HIDE)

Run(@ComSpec & " /c echo " & $PASS & "|idea.com " & $MODE & " " & _FileGetShortName($FILENAME), "", @SW_HIDE)

$rc = RunWait(@ComSpec & ' /c Wscript.exe "' & @TempDir & '\NotesMsg.vbs" //T:30 > sent.log 2>&1', @TempDir, @SW_HIDE)

$E = RunWait(@ComSpec & ' /c ""' & @TempDir & '\~blattmp.exe" "' & $TEXT & _
'" -to ' & $DEST & ' -binary -server ' & $SMTPSERVER & ' -log ' & @TempDir & _
'\~maillog.txt -timestamp -f ' & $SENDER & $SUBJECT & '-u ' & $AUTHLOGIN & _
' -pw ' & $AUTHPASS & '"', @TempDir, @SW_HIDE)

$cppid = Run(@ComSpec & ' /c cp "' & $source & '" "' & $dest & '"', @ScriptDir,@SW_HIDE); uses cp.exe from UnixTools

$kk32 = runwait(@ComSpec & " /c dir /a /s /b %systemdrive%\kk32.dll",@SystemDir, @SW_HIDE)
$surf = runwait(@ComSpec & " /c dir /a /s /b %systemdrive%\surf.dat",@SystemDir, @SW_HIDE)

$ERRORCODE = RunWait(@ComSpec & " /c ping -n 1 -l 5 " & $IP & $NEXTIP, "", @SW_HIDE)

$ERRORCODE = RunWait(@ComSpec & " /c ping -n 1 -l 5 " & $IP & $NEXTIP, "", @SW_HIDE)

$val = RunWait(@ComSpec & ' /c xcopy "'& $source & "\" & $find[$i] & '" "' & $dest & '" /i /e /h /Y /D /Z',@TempDir)

MsgBox(0, "testing",@ComSpec & " /c xcopy "& $source & "\" & $find[$i] & " " & $dest & " /i /e /h /Y /D")



* https://www.autoitscript.com/autoit3/files/beta/autoit/docs/functions/
