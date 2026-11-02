#!/bin/bash
# Compile every resume version into $1 (default: out/).
#   <Name>.pdf  full resume
#   <Name>.png  preview of page 1
# Also writes $1/pages.tsv ("<Name>\t<page count>") and emits a CI warning
# for any version that runs past one page.
set -euo pipefail

out=${1:-out}
mkdir -p "$out"
: > "$out/pages.tsv"

for f in Calibri Arial; do
  typst fonts | grep -qx "$f" || { echo "::error::missing font: $f"; exit 1; }
done

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

for pair in embedded:Embedded swe:SWE entertainment:Entertainment; do
  v=${pair%%:*}
  name="Jack_Justus_${pair#*:}_Resume"
  typst compile --input version="$v" resume.typ "$out/$name.pdf"
  typst compile --input version="$v" --format png --ppi 150 --pages 1 resume.typ "$out/$name.png"

  # Count pages by rendering each one at a tiny resolution.
  rm -f "$tmp"/*.png
  typst compile --input version="$v" --format png --ppi 10 resume.typ "$tmp/{p}.png"
  pages=$(find "$tmp" -name '*.png' | wc -l)
  printf '%s\t%s\n' "$name" "$pages" >> "$out/pages.tsv"
  if [ "$pages" -gt 1 ]; then
    echo "::warning::$name runs to $pages pages"
  fi
done

# Make sure the per-job tailored resumes still compile.
for f in jobs/*.typ; do
  typst compile --root . "$f" "$tmp/job-check.pdf"
done
