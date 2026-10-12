param(
    [string]$RuntimeDir = "app",
    [string]$BaseUrl = ""
)
$ErrorActionPreference = "Stop"
$runtimePath = (Resolve-Path $RuntimeDir).Path
$required = @("index.html","index.js","index.wasm","index.pck","index.png","index.icon.png","index.apple-touch-icon.png","index.audio.worklet.js","index.audio.position.worklet.js")
$errors = New-Object System.Collections.Generic.List[string]
foreach ($name in $required) {
    if (!(Test-Path -LiteralPath (Join-Path $runtimePath $name) -PathType Leaf)) { $errors.Add("missing runtime file: $name") }
}
$rootIndex = Join-Path (Split-Path $runtimePath -Parent) "index.html"
if (Test-Path -LiteralPath $rootIndex) { $errors.Add("runtime entry must stay under app/: root index.html exists") }
$residue = Get-ChildItem -LiteralPath $runtimePath -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Extension -in @('.import', '.uid') }
foreach ($item in $residue) { $errors.Add("editor residue in runtime package: $($item.FullName)") }
$htmlPath = Join-Path $runtimePath "index.html"
$html = [System.IO.File]::ReadAllText($htmlPath)
$refs = [regex]::Matches($html, '(?:src|href)=["'']([^"'']+)["'']')
foreach ($match in $refs) {
    $ref = $match.Groups[1].Value
    if ($ref -match '^(data:|https?://|#|mailto:)') { continue }
    $local = ($ref -split '[?#]')[0]
    if ([string]::IsNullOrWhiteSpace($local)) { continue }
    if (!(Test-Path -LiteralPath (Join-Path $runtimePath $local) -PathType Leaf)) { $errors.Add("broken local reference in index.html: $ref") }
}
if ($BaseUrl) {
    $base = $BaseUrl.TrimEnd('/') + '/'
    foreach ($name in $required) {
        try { $response = Invoke-WebRequest -Uri ($base + $name) -Method Head -UseBasicParsing -TimeoutSec 30; if ($response.StatusCode -ne 200) { $errors.Add("public resource returned $($response.StatusCode): $name") } }
        catch { $errors.Add("public resource request failed: $name :: $($_.Exception.Message)") }
    }
}
if ($errors.Count -gt 0) { $errors | ForEach-Object { Write-Error $_ }; Write-Host "RUNTIME_VERIFY=FAIL"; exit 1 }
Write-Host "RUNTIME_VERIFY=PASS runtime=$runtimePath"
if ($BaseUrl) { Write-Host "PUBLIC_RESOURCES=PASS base=$BaseUrl" }
