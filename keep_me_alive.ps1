Add-Type -AssemblyName System.Windows.Forms

$interval = 5

    while(1) {  
    $position = [System.Windows.Forms.Cursor]::Position  
    $position.X++  
    [System.Windows.Forms.Cursor]::Position = $position
    $position1 = [System.Windows.Forms.Cursor]::Position
    $position1.X--
    [System.Windows.Forms.Cursor]::Position = $position1    

    $time = Get-Date;  
    $shorterTimeString = $time.ToString("HH:mm:ss");  

    Write-Host $shorterTimeString "Mouse pointer has been moved 1 pix"  
    #Set your duration between each mouse move
    Start-Sleep -Seconds ($interval * 60)
    } 
