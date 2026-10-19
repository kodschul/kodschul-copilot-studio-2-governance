#!/usr/bin/env bash
# Exports all course decks (s00..s06) as PPTX into slides-dev/pptx/, named
# S0N_Copilot-Studio-Agenten-<deck title from frontmatter>.pptx (s00 -> "Intro").
# Slidev renders each slide as an image, so the PPTX is not text-editable.
# Usage: bash scripts/export-pptx.sh [s01 s04 ...]   (default: all decks)
set -euo pipefail
cd "$(dirname "$0")/.."

bash scripts/fix-frontmatter.sh

decks=("$@")
if [ "${#decks[@]}" -eq 0 ]; then
  decks=(s00 s01 s02 s03 s04 s05 s06)
fi

COURSE="Copilot-Studio-Governance"
mkdir -p pptx

deck_title() {
  if [ "$1" = "s00" ]; then echo "Intro"; return; fi
  sed -n 's/^title: *"\{0,1\}S[0-9]*: *\(.*[^"]\)"\{0,1\} *$/\1/p' "$1/$1.md" | head -1
}
failed=()
for d in "${decks[@]}"; do
  upper=$(echo "$d" | tr '[:lower:]' '[:upper:]')
  out="pptx/${upper}_${COURSE}-$(deck_title "$d").pptx"
  echo "==> exporting $d"
  if npx slidev export "$d/$d.md" --format pptx --output "$out" --timeout 60000; then
    echo "    ok: $out"
  else
    failed+=("$d")
  fi
done

if [ "${#failed[@]}" -gt 0 ]; then
  echo "FAILED: ${failed[*]}" >&2
  exit 1
fi
echo "Done. Files in $(pwd)/pptx"
