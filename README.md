# `.github` — configuration de l'organisation

> Dépôt organisationnel spécial : GitHub applique certains de ses fichiers à **tous les dépôts** de l'organisation qui n'ont pas les leurs. Il doit être **public** et s'appeler exactement `.github`.

## Ce qui est hérité automatiquement

| Fichier | Effet |
| --- | --- |
| `PULL_REQUEST_TEMPLATE.md` | Modèle de PR par défaut |
| `.github/ISSUE_TEMPLATE/*` | Formulaires d'issues (bug, feature, qualité de données) |
| `CONTRIBUTING.md`, `SECURITY.md`, `CODE_OF_CONDUCT.md`, `SUPPORT.md` | Fichiers de santé communautaire |
| `profile/README.md` | Page d'accueil de l'organisation |

## Ce qui n'est PAS hérité (à appliquer à la main)

- `labels.yml` → `scripts/sync-labels.sh <owner/repo> [--dry-run]` (GitHub CLI `gh` authentifié + `yq` requis)
- Workflows GitHub Actions → voir le dépôt `shared-workflows`
- Règles de protection de branche / rulesets → à configurer dans chaque dépôt
- `.yamllint.yml`, `.markdownlint.json` → propres à ce dépôt

## Principes de l'organisation

- **Squash obligatoire**, historique linéaire sur `main`.
- **Aucun auto-merge** (Dependabot compris) : un humain valide chaque PR.
- **Aucun secret en clair** : `.env` jamais commité, seul `.env.example` l'est.
- **Pas de donnée personnelle réelle** dans les jeux de données d'exemple.
- Format de commit : `<gitmoji> <type>(<scope>): <description en anglais>` (voir `CONTRIBUTING.md`).

## Mise en place

1. Créer l'organisation [tozano-data-labs](https://github.com/tozano-data-labs), puis le dépôt public `.github`.
2. Pousser ce contenu sur `main`.
3. Appliquer les labels : `./scripts/sync-labels.sh tozano-data-labs/data-platform`.
