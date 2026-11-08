# Contribuer

Merci de contribuer. Ce guide s'applique par défaut à tous les dépôts de l'organisation.

## Flux de travail

1. Ouvrir (ou retrouver) une **issue** décrivant le besoin.
2. Créer une branche depuis `main` : `feat/ingestion-transport`, `fix/dbt-null-keys`…
3. Faire des commits **petits et ciblés**.
4. Ouvrir une **pull request** (même en travail solo) : la CI doit être verte.
5. **Squash and merge** uniquement. Aucun force push sur `main`, aucun auto-merge.

## Format de commit et de titre de PR

```text
<gitmoji> <type>(<scope>): <description en anglais>
```

- Impératif, sans point final, **72 caractères maximum**.
- Corps facultatif : le *pourquoi*, 3 lignes maximum.
- Un commit n'est jamais réécrit une fois poussé.

| Gitmoji | Type | Usage |
| --- | --- | --- |
| ✨ | `feat` | Nouvelle fonctionnalité |
| 🐛 | `fix` | Correction de bug |
| 📚 | `docs` | Documentation |
| ♻️ | `refactor` | Refonte sans changement de comportement |
| ✅ | `test` | Tests |
| 🔧 | `chore` | Maintenance, configuration |
| 🔒 | `security` | Sécurité |
| 🚑 | `ci` | Intégration continue |
| 📦 | `build` | Build, Docker, dépendances de build |
| ⏪ | `revert` | Annulation |

**Scopes** usuels : `ingestion`, `orchestration`, `dbt`, `quality`, `dataviz`, `infra`, `docker`, `deps`, `docs`.

Exemple : `✨ feat(ingestion): add air quality API source`

## Qualité

- Aucun changement sans test (unitaire, test dbt, contrôle de qualité de données).
- Couverture : **80 % global**, seuil qui fait échouer la CI.
- Formatage et lint automatiques (`ruff`, `sqlfluff`, `pre-commit`).
- Données d'exemple : publiques ou synthétiques, **jamais de données personnelles réelles**.

## Secrets

`.env` n'est jamais commité ; seul `.env.example` l'est. Les secrets CI passent par les *secrets* GitHub.

## Décisions d'architecture

Toute décision structurante (choix d'un orchestrateur, d'un entrepôt, d'un format) fait l'objet d'un **ADR** dans `docs/adr/`.
