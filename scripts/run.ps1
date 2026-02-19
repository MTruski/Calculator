# get the absolute path of the project root (one level up from /scripts)
$projectRoot = Resolve-Path "$PSScriptRoot/.."
$lovePath = "C:\Program Files\LOVE\love.exe"

# launch the game
Write-Host "Launching LÖVE from: $projectRoot" -ForegroundColor Cyan
Start-Process -FilePath $lovePath -Wait -ArgumentList "--console", "`"$projectRoot`""