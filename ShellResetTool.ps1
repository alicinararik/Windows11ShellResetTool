Write-Host "Stopping Explorer process..." -ForegroundColor Cyan
Stop-Process -Name explorer -Force

Write-Host "Removing TaskBar pinned items folder if exists..." -ForegroundColor Cyan
$taskbarPath = "$env:APPDATA\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
if (Test-Path $taskbarPath) {
    Remove-Item "$taskbarPath" -Recurse -Force
    Write-Host "Old TaskBar folder removed." -ForegroundColor Green
}
New-Item -Path $taskbarPath -ItemType Directory | Out-Null
Write-Host "New TaskBar folder created." -ForegroundColor Green

Write-Host "Removing Start Menu layout file if exists..." -ForegroundColor Cyan
$shellLayout = "$env:APPDATA\Microsoft\Windows\Shell\Layouts.xml"
if (Test-Path $shellLayout) {
    Remove-Item $shellLayout -Force
    Write-Host "Start Menu layout file removed." -ForegroundColor Green
}

Write-Host "Clearing Start Menu cache folders..." -ForegroundColor Cyan
Remove-Item "$env:LOCALAPPDATA\TileDataLayer" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:LOCALAPPDATA\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Start Menu cache cleared." -ForegroundColor Green

Write-Host "Restarting Explorer to apply changes..." -ForegroundColor Cyan
Start-Process explorer

Write-Host "Done! Taskbar and Start Menu reset completed." -ForegroundColor Green
