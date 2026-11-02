#!/bin/bash
# Compile every resume version into $1 (default: out/).
#   <Name>.pdf    full resume
#   <Name>.png    preview of page 1
#   layout.tsv    "<Name>\t<pages>\t<empty lines left at the bottom>"
# ci/check.sh validates layout.tsv; this script only builds.
set -euo pipefail

out=${1:-out}
mkdir -p "$out"
: > "$out/layout.tsv"

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

  # lib.typ marks where the content ends; turn that into a page count and
  # the number of body lines still free above the bottom margin.
  typst eval 'query(<resume-end>).first().value' --in resume.typ --input version="$v" \
    | jq -r --arg name "$name" \
        '[$name, .page, ((.bottom - .y) / .pitch * 10 | floor / 10)] | @tsv' \
    >> "$out/layout.tsv"
done

# Make sure the per-job tailored resumes still compile.
for f in jobs/*.typ; do
  typst compile --root . "$f" "$tmp/job-check.pdf"
done
