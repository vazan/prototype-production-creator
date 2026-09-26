#!/usr/bin/env bash
set -euo pipefail
PACK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HERMES_HOME="${HERMES_HOME:-$HOME/.hermes}"
mkdir -p "$HERMES_HOME/skills/product-studio" "$HERMES_HOME/skill-bundles"
cp -R "$PACK_DIR/skills/product-studio/"* "$HERMES_HOME/skills/product-studio/"
cp "$PACK_DIR/skill-bundles/"*.yaml "$HERMES_HOME/skill-bundles/"
echo "Hermes Product Studio V2 installé."
echo "Prototype: /prototype-studio <idée>"
echo "Production: /production-studio Transforme le prototype approuvé en version production-ready."
