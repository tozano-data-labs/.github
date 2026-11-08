# Politique de sécurité

## Signaler une vulnérabilité

**Ne publiez pas de faille dans une issue publique.**

Utilisez le signalement privé de GitHub : onglet **Security → Report a vulnerability** du dépôt concerné.

Merci d'indiquer : le dépôt, la version ou le commit, les étapes de reproduction et l'impact estimé.

## Délais visés

- Accusé de réception : sous 5 jours ouvrés
- Évaluation initiale : sous 10 jours ouvrés

## Périmètre

Ces dépôts sont des projets de démonstration. Sont néanmoins pris au sérieux : secrets exposés, injection SQL dans les pipelines, dépendances vulnérables, images Docker non sûres.

## Bonnes pratiques appliquées

- Aucun secret dans l'historique git ; `.env` ignoré
- Revue des dépendances (`dependency-review`) et scan d'images (Trivy) en CI
- Dependabot activé, fusion manuelle
