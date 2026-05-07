#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"
HOST="${HOST:-127.0.0.1}"

printf 'Starting PK Agency preview server at http://%s:%s\n' "$HOST" "$PORT"
python3 -m http.server "$PORT" --bind "$HOST"
