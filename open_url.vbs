Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "firefox.exe -new-tab http://localhost:3000", 1, False

