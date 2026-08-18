#!/usr/bin/env bash
# Install week-1 + play plugins into the local DSH *web* profile.
# Requires: Node.js and `dsh` on PATH (npx @deepseek-ai/dsh or a global install).
# Run this on YOUR machine, not necessarily in this sandbox.
set -euo pipefail

DSH="${DSH:-dsh}"
if ! command -v "$DSH" >/dev/null 2>&1; then
  if command -v npx >/dev/null 2>&1; then
    DSH="npx --yes @deepseek-ai/dsh"
  else
    echo "dsh not found. Install Node.js, then: npm i -g @deepseek-ai/dsh"
    exit 1
  fi
fi

PROFILE="${DSH_PROFILE:-web}"
add() {
  echo "==> dsh plugin --profile $PROFILE add $1"
  # shellcheck disable=SC2086
  $DSH plugin --profile "$PROFILE" add "$1"
}

echo "Installing marketplace + discovery first..."
add dshmarket || add dsh-market/dsh-market || true
add dsh-find-plugin || add awesome-dsh-plugin/dsh-find-plugin || true

echo "Installing week-1 productivity plugins..."
# file drop / upload (one is enough if another fails)
add a903067276-rgb/dsh-file-upload || true
add dannyvan/dsh-file-drop || true
# MCP manager
add Js2Hou/dsh-mcp-manager || true
# workbench / web-ui family
add DamonKoy/dsh-web-ui || add zhu1090093659/dsh-web-ui || true
add loadingvx/deepseek-harness-workbench-plugin || true
add omdsh-dev/DSH-better-sidebar || true

echo "Installing play: skins / pet / whale..."
add cookiesheep/whale-on-desk || true
add LeemanCheung/dsh-whale-animation || true
add sereinmono/dsh-desktop-pet || true
add mengyun233/dsh-codex-pet || true
add Physicolor/harness-ui-enhancer || true

echo "Done. Restart DSH (or Desktop) and open Settings → Plugins."
echo "If a slug failed, search it in dshmarket and install from the UI."
