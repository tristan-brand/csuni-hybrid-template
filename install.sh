#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_DIR="$(cd "$(dirname "$0")" && pwd)/template"

echo "Installing template from: $TEMPLATE_DIR"
dotnet new uninstall Tristan.CSUni.Hybrid >/dev/null 2>&1 || true
dotnet new install "$TEMPLATE_DIR"

echo "Done."
echo "Verify with: dotnet new list | grep csuni"
