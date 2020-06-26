$myshell = New-Object -com "Wscript.Shell"

while(1) {
  Start-Sleep -Seconds 300
  $myshell.sendkeys(".")
}

