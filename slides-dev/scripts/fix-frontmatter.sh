#!/usr/bin/env bash
# Auto-heals the recurring Slidev bug where a blank line gets inserted between a
# slide's `---` separator and its `layout:`/`title:` frontmatter, which breaks
# per-slide parsing (slide overview shows "undefined" titles). Run before every
# dev/build so a broken file never gets served or shipped.
set -euo pipefail
cd "$(dirname "$0")/.."

fixed=0
for f in s*/s*.md; do
  count=$(perl -0ne 'print scalar(() = /---\n\n(?:layout|title):/g)' "$f")
  if [ "$count" -gt 0 ]; then
    perl -0pi -e 's/(^---\n)\n(?=layout:|title:)/$1/mg' "$f"
    echo "fixed $count corrupted separators in $f"
    fixed=$((fixed + count))
  fi
done

if [ "$fixed" -eq 0 ]; then
  echo "no frontmatter corruption found"
fi
