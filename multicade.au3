HotKeySet("!^q", close)

While 1
Sleep(10)
WEnd

Func statusUpdate($functionName, $additionalText = '')
	If $additionalText <> '' Then
		TraySetToolTip("-Function: " & $functionName)
	Else
		TraySetToolTip("-Function: " & $functionName & " - " & $additionalText)
	EndIf
EndFunc

Func close()
	statusUpdate("Close")
   $winTitle = WinGetTitle("[ACTIVE]")
   ;MsgBox(1, $winTitle, $winTitle)
   determineWindow($winTitle)
EndFunc

Func determineWindow($winTitle)
   statusUpdate("Determine Window", $winTitle)
	;MsgBox(0,"working",$winTitle)

   If StringInStr($winTitle, "Fusion 3.64") > 0 Then
	  Send("!{F4}")
   EndIf

   If StringInStr($winTitle, "Exit Nestopia") > 0 Then
	  ControlClick("", "", "&Yes")
   EndIf

   If StringInStr($winTitle, "Project64") > 0 Then
	  Send("!{F4}")
   EndIf

   If StringInStr($winTitle, "MAME") > 0 Then
	   ProcessClose("mame.exe")
	  Send("{ESC}")
   EndIf

   If StringInStr($winTitle, "Stella") > 0 Then
	  Send("!{F4}")
   EndIf

   If StringInStr($winTitle, "VisualBoyAdvance") > 0 Then
	  Send("!{F4}")
   EndIf

   If StringInStr($winTitle, "zsnes") > 0 Then
	  Send("!{F4}")
   EndIf

   EndFunc

