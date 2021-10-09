$path='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
$value=(Get-ItemProperty -Path $path).Settings
$value[8]=3
&Set-ItemProperty -Path $path -Name Settings -Value $value
&Stop-Process -f -ProcessName explorer
