#!/bin/bash
set -euo pipefail
: "${REPO:?}"
: "${GITHUB_PAT:?}"

token=$(curl -fsSL -X POST \
  -H "Authorization: Bearer $GITHUB_PAT" \
  -H "Accept: application/vnd.github+json" \
  "https://api.github.com/repos/$REPO/actions/runners/registration-token" | jq -r .token)

cd /home/runner
./config.sh --unattended --replace \
  --url "https://github.com/$REPO" \
  --token "$token" \
  --name "${RUNNER_NAME:-resume-builder}" \
  --labels resume

exec ./run.sh
