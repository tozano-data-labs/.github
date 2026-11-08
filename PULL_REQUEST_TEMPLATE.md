<!-- Titre de la PR au format : <gitmoji> <type>(<scope>): <description en anglais> -->
<!-- Exemple : ✨ feat(ingestion): add open data transport source -->

## Contexte

<!-- Pourquoi ce changement ? Lien vers l'issue : Closes #123 -->

## Changements

<!-- Ce qui est modifié, en quelques puces. -->

-

## Type de changement

- [ ] ✨ feat — nouvelle fonctionnalité (source, pipeline, modèle, dashboard)
- [ ] 🐛 fix — correction
- [ ] ♻️ refactor — sans changement de comportement
- [ ] 📚 docs — documentation
- [ ] 🔧 chore / 🚑 ci / 📦 build — outillage

## Impact données

- [ ] Aucun impact sur les schémas ni sur les données existantes
- [ ] Changement de schéma (colonnes, types, clés) — migration / backfill décrit ci-dessous
- [ ] Nouvelle source ou nouvelle table (documentée, avec tests)

<!-- Décrire le backfill, la rétrocompatibilité, l'impact sur les marts / dashboards. -->

## Checklist

- [ ] Tests ajoutés ou mis à jour (unitaires, tests dbt, tests de qualité de données)
- [ ] La CI est verte en local (`lint`, `test`)
- [ ] Documentation mise à jour (README, schéma, ADR si décision d'architecture)
- [ ] Aucun secret ni donnée personnelle réelle dans le diff (`.env` non commité)
- [ ] Le titre de la PR respecte le format de commit

## Comment tester

<!-- Commandes à lancer, jeu de données utilisé, résultat attendu. -->
