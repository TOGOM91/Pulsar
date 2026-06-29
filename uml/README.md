# Pulsar — Diagrammes UML & schémas

Documentation graphique du projet Pulsar : modèle de données, classes, cas
d'utilisation, séquences, états, activité, navigation, architecture.

> **Backend = Cloud Firestore** (migration Isar/Drift terminée). Tous les
> documents ci-dessous sont à jour avec cette architecture.

Les diagrammes sont écrits en **Mermaid** (rendu automatique sur GitHub,
exportable via https://mermaid.live) — sauf le cas d'utilisation en **PlantUML**
(https://www.plantuml.com/plantuml).

## Sommaire

| Fichier | Contenu |
|---------|---------|
| [`mcd.md`](mcd.md) | Modèle Conceptuel de Données (Merise) + cardinalités |
| [`mld.md`](mld.md) | Modèle Logique relationnel + mapping Firestore |
| [`class-diagram.md`](class-diagram.md) | Classes : modèles de domaine + couche data |
| [`use-case.md`](use-case.md) | Cas d'utilisation (PlantUML) + matrice RBAC |
| [`sequence-diagrams.md`](sequence-diagrams.md) | Inscription, connexion, paiement, remboursement |
| [`state-diagrams.md`](state-diagrams.md) | Cycles de vie : billet, commande, auth |
| [`activity-diagrams.md`](activity-diagrams.md) | Démarrage, réservation, modération admin |
| [`navigation.md`](navigation.md) | Arborescence GoRouter + gardes |
| [`architecture.md`](architecture.md) | Clean Architecture + déploiement Firebase |

## Documents liés
- [`../docs/PLAN_DIAGRAMMES.md`](../docs/PLAN_DIAGRAMMES.md) — plan complet (maquettes incluses).
- [`../sql/schema.sql`](../sql/schema.sql) — schéma SQL `CREATE TABLE` du MLD.
- [`../firestore.rules`](../firestore.rules) — règles de sécurité (RBAC).
- [`../firestore.indexes.json`](../firestore.indexes.json) — index composites.
