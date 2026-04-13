#!/usr/bin/env bash
set -euo pipefail

VAULT="${1:-/root/Obsidian}"
BRANCH="${OBSIDIAN_GIT_BRANCH:-main}"
AUTHOR_NAME="${OBSIDIAN_GIT_AUTHOR_NAME:-Hermes Agent}"
AUTHOR_EMAIL="${OBSIDIAN_GIT_AUTHOR_EMAIL:-hermes@local}"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S %Z')"

cd "$VAULT"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Not a git repository: $VAULT" >&2
  exit 1
fi

git config user.name "$AUTHOR_NAME"
git config user.email "$AUTHOR_EMAIL"

git fetch origin "$BRANCH"
git pull --rebase --autostash origin "$BRANCH"

git add -A

if ! git diff --cached --quiet; then
  git commit -m "Hermes sync: $TIMESTAMP"
fi

git push origin "$BRANCH"

echo "Vault synced at $TIMESTAMP"
