Option Explicit

Const vbHide = 0

Function ArgsToString()
   Const DELIMITER = " "
   Dim ret
   Dim i
   Dim n

   ret = ""
   n = Wscript.Arguments.Count
   If n > 0 Then
     For i = 1 To n
       If i < n Then
         ret = ret & Wscript.Arguments(i - 1) & DELIMITER
       Else
         ret = ret & Wscript.Arguments(i - 1)
       End If
     Next
   End If
   ArgsToString = ret
End Function

Dim batPath
batPath = Replace(WScript.ScriptFullName,".vbs",".ps1")

CreateObject("Wscript.Shell").run "powershell -NoProfile -ExecutionPolicy Unrestricted " & batPath & " " & ArgsToString(), vbHide