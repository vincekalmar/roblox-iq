$ErrorActionPreference = "Stop"

Write-Host "Checking formatting..."
stylua --check src

Write-Host "Running Selene..."
selene src

Write-Host "Checking Rojo build..."
New-Item -ItemType Directory -Force -Path build | Out-Null
rojo build default.project.json -o build/verification.rbxl

Write-Host "Verification passed."
