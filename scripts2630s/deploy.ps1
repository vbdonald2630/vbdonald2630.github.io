# deploy.ps1 - Plain text version (No Emojis)
Set-Location "$PSScriptRoot\.."

Write-Host "Starting Deployment..." -ForegroundColor Cyan

# 1. Add changes
git add .

# 2. Commit with date
$date = Get-Date -Format "yyyy-MM-dd"
$msg = "Site Update: $date"
Write-Host "Committing: $msg" -ForegroundColor Yellow
git commit -m "$msg"

# 3. Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push origin main

Write-Host "SUCCESS! Site is live." -ForegroundColor Green