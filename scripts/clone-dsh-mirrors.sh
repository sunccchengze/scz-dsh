#!/usr/bin/env bash
# Shallow-clone high-star DeepSeek Harness related repos into vendor/mirrors.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$ROOT/vendor/mirrors"
mkdir -p "$DEST"
repos=(
  "https://github.com/deepseek-ai/deepseek-harness.git"
  "https://github.com/awesome-dsh-plugin/awesome-dsh-plugin.git"
  "https://github.com/nexu-io/open-design.git"
  "https://github.com/Nagi-ovo/voyager.git"
  "https://github.com/anywhere-labs/deepseek-harness-desktop.git"
  "https://github.com/walkinglabs/learn-harness-engineering.git"
  "https://github.com/MemTensor/MemOS.git"
  "https://github.com/zhu1090093659/dsh-web-ui.git"
  "https://github.com/liustack/modlens.git"
  "https://github.com/dsh-market/dsh-market.git"
  "https://github.com/awesome-dsh-plugin/dsh-find-plugin.git"
)
for url in "${repos[@]}"; do
  name="$(basename "$url" .git)"
  if [[ -d "$DEST/$name/.git" ]]; then
    echo "skip (exists): $name"
    continue
  fi
  echo "clone $name"
  git clone --depth 1 "$url" "$DEST/$name"
done
echo "done. size:"
du -sh "$DEST"
