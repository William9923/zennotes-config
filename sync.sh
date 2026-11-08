#!/usr/bin/env bash
set -euo pipefail

repo=$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
source_config="$HOME/.config/zennotes/config.toml"
source_templates="$HOME/zennotes-vault/inbox/Templates"
remote=git@github.com:William9923/zennotes-config.git

[ -f "$source_config" ] || { echo "Missing config: $source_config" >&2; exit 1; }
[ -d "$source_templates" ] || { echo "Missing templates folder: $source_templates" >&2; exit 1; }
find "$source_templates" -maxdepth 1 -type f -name '*.md' -print -quit | grep -q . || {
  echo "No Markdown templates found in $source_templates" >&2
  exit 1
}

[ "$(git -C "$repo" branch --show-current)" = main ] || {
  echo "Run this from the main branch" >&2
  exit 1
}
[ "$(git -C "$repo" remote get-url origin)" = "$remote" ] || {
  echo "Unexpected origin for $repo" >&2
  exit 1
}
[ -z "$(git -C "$repo" status --porcelain)" ] || {
  echo "Commit or stash existing repo changes before syncing" >&2
  exit 1
}

git -C "$repo" fetch --quiet origin main
[ "$(git -C "$repo" rev-parse HEAD)" = "$(git -C "$repo" rev-parse origin/main)" ] || {
  echo "Local main differs from origin/main; reconcile it before syncing" >&2
  exit 1
}

tmp=$(mktemp "$repo/.config.toml.XXXXXX")
trap 'rm -f "$tmp"' EXIT
cp -p "$source_config" "$tmp"
python3 - "$tmp" <<'PY'
import pathlib
import sys
import tomllib

tomllib.loads(pathlib.Path(sys.argv[1]).read_text())
PY
mv -f "$tmp" "$repo/config.toml"
rsync -a --delete --include='*.md' --exclude='*' "$source_templates/" "$repo/templates/"

git -C "$repo" add -- config.toml templates/
git -C "$repo" diff --cached --check -- config.toml templates/
if git -C "$repo" diff --cached --quiet -- config.toml templates/; then
  echo "Config and templates are already in sync; nothing to commit or push."
  exit 0
fi

git -C "$repo" commit --only config.toml templates/ -m "Sync ZenNotes settings and templates"
git -C "$repo" push origin main
