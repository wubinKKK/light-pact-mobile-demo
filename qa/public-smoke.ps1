param(
    [string]$BaseUrl = "https://wubinkkk.github.io/light-pact-mobile-demo/"
)
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
& (Get-Process -Id $PID).Path -NoProfile -File (Join-Path $root "tools/verify-runtime.ps1") -RuntimeDir (Join-Path $root "app") -BaseUrl $BaseUrl
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host "PUBLIC_SMOKE=PASS $BaseUrl"
