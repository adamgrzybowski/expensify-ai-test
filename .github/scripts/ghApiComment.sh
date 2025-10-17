#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./ghApiComment.sh --pr 123 --sha COMMIT_SHA --path src/file.ts --position 17
#   Then write the comment body directly to STDIN (no echo or redirection needed).

while [[ $# -gt 0 ]]; do
  case "$1" in
    --pr) PR="$2"; shift 2 ;;
    --sha) SHA="$2"; shift 2 ;;
    --path) FILE_PATH="$2"; shift 2 ;;
    --position) POS="$2"; shift 2 ;;
    *) shift ;;
  esac
done

BODY="$(cat)"

gh api -X POST "repos/${GITHUB_REPOSITORY}/pulls/${PR}/comments" \
  -f commit_id="$SHA" \
  -f path="$FILE_PATH" \
  -f position="$POS" \
  -F body="$BODY" \
  >/dev/null
