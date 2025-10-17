#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./ghApiComment.sh --pr 123 --sha COMMIT_SHA --path src/file.ts --line 17 --body-file /path/to/body.md

while [[ $# -gt 0 ]]; do
  case "$1" in
    --pr) PR="$2"; shift 2 ;;
    --sha) SHA="$2"; shift 2 ;;
    --path) FILE_PATH="$2"; shift 2 ;;
    --line) POS="$2"; shift 2 ;;
    --body-file) BODY_FILE="$2"; shift 2 ;;
    *) echo "Unknown arg: $1" >&2; exit 2 ;;
  esac
done

if [[ -z "${PR:-}" || -z "${SHA:-}" || -z "${FILE_PATH:-}" || -z "${POS:-}" || -z "${BODY_FILE:-}" ]]; then
  echo "Missing required args" >&2
  exit 2
fi

if [[ ! -f "$BODY_FILE" ]]; then
  echo "Body file not found: $BODY_FILE" >&2
  exit 2
fi

gh api -X POST "repos/${GITHUB_REPOSITORY}/pulls/${PR}/comments" \
  -f commit_id="$SHA" \
  -f path="$FILE_PATH" \
  -f line="$POS" \
  -F body=@"$BODY_FILE" \
  >/dev/null