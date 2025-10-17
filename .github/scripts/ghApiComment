#!/bin/bash

# Usage:
#   ./ghApiComment.sh --pr 123 --sha COMMIT_SHA --path src/file.ts --position 17 --body "Message"

# Proxy script to limit the scope of gh api tool for the claude code action

while [[ $# -gt 0 ]]; do
  case "$1" in
    --pr) PR="$2"; shift 2 ;;
    --sha) SHA="$2"; shift 2 ;;
    --path) PATH="$2"; shift 2 ;;
    --position) POS="$2"; shift 2 ;;
    --body) BODY="$2"; shift 2 ;;
    *) shift ;;
  esac
done

gh api -X POST "repos/${GITHUB_REPOSITORY}/pulls/${PR}/comments" \
  -F "commit_id=$SHA" \
  -F "path=$PATH" \
  -F "position=$POS" \
  -F "body=$BODY" \
  >/dev/null
