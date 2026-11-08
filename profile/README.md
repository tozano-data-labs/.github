# tozano-data-labs

Espace de démonstration de pratiques d'ingénierie **data** : une plateforme de données de bout en bout, et les standards d'organisation qui l'entourent (templates, CI partagée, conventions).

## Dépôts

| Dépôt | Rôle |
| --- | --- |
| [`data-platform`](https://github.com/tozano-data-labs/data-platform) | Monorepo : sources, pipelines, transformation (dbt), dataviz, infra |
| [`template-data-pipeline`](https://github.com/tozano-data-labs/template-data-pipeline) | Dépôt modèle : structure, CI, Docker, pre-commit prêts à l'emploi |
| [`shared-workflows`](https://github.com/tozano-data-labs/shared-workflows) | Workflows GitHub Actions réutilisables (`workflow_call`) |
| [`handbook`](https://github.com/tozano-data-labs/handbook) | Conventions, ADR, guide de contribution |

## Pratiques démontrées

- Architecture en couches **raw → staging → marts**, tests de qualité de données (dbt tests, Great Expectations / Soda)
- Pipelines reproductibles (`docker compose up`), orchestration, CI/CD
- Gouvernance : PR obligatoires, checks requis, `CODEOWNERS`, squash, aucun auto-merge
- Documentation : schémas d'architecture, ADR, README structurés

## Contribuer

Voir [`CONTRIBUTING.md`](./CONTRIBUTING.md). Failles de sécurité : voir [`SECURITY.md`](./SECURITY.md).
