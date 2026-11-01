param(
    [string]$Version = "0.0.0",
    [string]$Executable = "target/release/whis-beats.exe",
    [string]$Output = "dist"
)

$ErrorActionPreference = "Stop"
$root = Resolve-Path (Join-Path $PSScriptRoot "../..")
$source = Resolve-Path (Join-Path $root $Executable)
$outputPath = Join-Path $root $Output
New-Item -ItemType Directory -Force $outputPath | Out-Null

$iscc = @(
    (Join-Path ${env:ProgramFiles(x86)} "Inno Setup 6/ISCC.exe")
    (Join-Path $env:LOCALAPPDATA "Programs/Inno Setup 6/ISCC.exe")
) | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $iscc) {
    throw "Inno Setup 6 is not installed"
}

$env:WHIS_BEATS_VERSION = $Version.TrimStart("v")
$env:WHIS_BEATS_EXE = $source.Path
$env:WHIS_BEATS_DIST = (Resolve-Path $outputPath).Path
$env:WHIS_BEATS_ARCH = "x64compatible"
$env:WHIS_BEATS_SETUP = "WHIS-BEATS-Setup"

$env:SONORA_VERSION = $env:WHIS_BEATS_VERSION
$env:SONORA_EXE = $env:WHIS_BEATS_EXE
$env:SONORA_DIST = $env:WHIS_BEATS_DIST
$env:SONORA_ARCH = $env:WHIS_BEATS_ARCH
$env:SONORA_SETUP = $env:WHIS_BEATS_SETUP

& $iscc (Join-Path $PSScriptRoot "whis-beats.iss")
if ($LASTEXITCODE -ne 0) {
    throw "Inno Setup failed with exit code $LASTEXITCODE"
}
