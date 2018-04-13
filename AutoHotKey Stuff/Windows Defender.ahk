^j::
   msgBox WARNING! VIRUS DETECTED
   msgBox PREFORMING SCAN ON DRIVE "C:\"...
   Run cmd.exe
   winactivate C:\WINDOWS\SYSTEM32\cmd.exe
   winwaitactive C:\WINDOWS\SYSTEM32\cmd.exe
   sendinput color 0a{enter}
   sendinput cd C:\ {enter}
   sendinput echo SCANNING.{enter}
   sleep 1000
   sendinput echo SCANNING..{enter}
   sleep 1000
   sendinput echo SCANNING...{enter}
   sleep 1000
   sendinput tree{enter}
   sleep 2000
   winwaitactive C:\WINDOWS\SYSTEM32\cmd.exe
   sendinput echo SCAN FAIL{enter}
   msgBox VIRUS NOT FOUND IN DRIVE"C:\"
   msgBox SEARCHING FOR OTHER DRIVES...
   sleep 2000
   msgbox FOUND DRIVE "D:\" PREFORMING SCAN...
   sendinput d:
   sendinput tree{enter}


   exitapp
Return
