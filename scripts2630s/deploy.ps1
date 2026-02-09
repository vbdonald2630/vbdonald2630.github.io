# deploy.ps1 - Git Pump (timestamp commit, no alphanumeric versioning)
Set-Location "$PSScriptRoot\.."

$date = Get-Date -Format 'yyyy-MM-dd HH:mm'
$msg = 'automated update: ' + $date

git add .
if (git diff --staged --quiet) {
    Write-Host 'Nothing to commit, repository is clean.'
} else {
    git commit -m $msg
    git push
    if ($?) { [Console]::Beep(880, 300); Write-Host 'Pushed successfully.' }
}