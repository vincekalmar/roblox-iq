#!/usr/bin/env bash
set -euo pipefail

echo "Checking formatting..."
stylua --check src

echo "Running Selene..."
selene src

echo "Checking Rojo build..."
mkdir -p build
rojo build default.project.json -o build/verification.rbxl

echo "Verification passed."
