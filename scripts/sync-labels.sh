#!/usr/bin/env bash
# Applique labels.yml à un dépôt GitHub.
# Usage : ./scripts/sync-labels.sh <owner/repo> [--dry-run]
# Prérequis : GitHub CLI (gh) authentifié, yq de mikefarah (v4, pas le yq Python).
set -euo pipefail

if [[ $# -lt 1 || $# -gt 2 ]]; then
  echo "Usage : $0 <owner/repo> [--dry-run]" >&2
  exit 2
fi

repo="$1"
dry_run=false
if [[ "${2:-}" == "--dry-run" ]]; then
  dry_run=true
elif [[ -n "${2:-}" ]]; then
  echo "Option inconnue : $2" >&2
  exit 2
fi

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
file="$root/labels.yml"

command -v yq >/dev/null || { echo "yq est requis" >&2; exit 1; }
if [[ "$dry_run" == false ]]; then
  command -v gh >/dev/null || { echo "gh est requis" >&2; exit 1; }
fi

count=0
while IFS=$'\t' read -r name color description; do
  count=$((count + 1))
  if [[ "$dry_run" == true ]]; then
    echo "[dry-run] $repo : label '$name' (#$color) — $description"
  else
    gh label create "$name" --color "$color" --description "$description" --force --repo "$repo"
  fi
done < <(yq -r '.[] | [.name, .color, .description] | @tsv' "$file")

if [[ "$count" -eq 0 ]]; then
  echo "Aucun label lu depuis $file (yq mikefarah v4 requis)" >&2
  exit 1
fi

echo "$count labels traités pour $repo."
