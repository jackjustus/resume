#!/bin/bash
# Validate the layout of every built resume (run ci/build.sh first).
# Each version must fit on one page and fill it, leaving no more than
# MAX_EMPTY_LINES blank body lines above the bottom margin.
set -euo pipefail

out=${1:-out}
max=${MAX_EMPTY_LINES:-2}
failed=0

while IFS=$'\t' read -r name pages empty; do
  if [ "$pages" -gt 1 ]; then
    echo "::error::$name runs to $pages pages; it must fit on one."
    failed=1
  elif awk -v e="$empty" -v m="$max" 'BEGIN { exit !(e > m) }'; then
    echo "::error::$name leaves $empty empty lines at the bottom (max $max); add content or tighten spacing."
    failed=1
  else
    echo "$name: 1 page, $empty empty lines at the bottom"
  fi
done < "$out/layout.tsv"

exit "$failed"
