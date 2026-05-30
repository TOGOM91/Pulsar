# Pulsar — Diagrammes UML & schémas

Documentation graphique du projet Pulsar : architecture, modèle de données, classes, flux d'activité, machines à états.

Les diagrammes sont écrits en **Mermaid** — rendu automatique sur GitHub, exportable en SVG/PNG via `mermaid-cli` ou https://mermaid.live.

## Sommaire

| Fichier | Contenu |
|---|---|
| [architecture.md](architecture.md) | Vue globale (Clean Architecture, plugins, plateformes) |
| [mcd.md](mcd.md) | Modèle Conceptuel de Données (entités + cardinalités métier) |
| [mld.md](mld.md) | Modèle Logique de Données (tables SQLite Drift + clés étrangères) |
| [class-diagram.md](class-diagram.md) | Diagrammes de classes (modèles, services, RBAC, providers) |
| [activity-diagrams.md](activity-diagrams.md) | Diagrammes d'activité (auth, checkout, admin CRUD, router guard, démarrage) |
| [state-diagrams.md](state-diagrams.md) | Machines à états (ticket lifecycle, order status) |

## Visualisation

### Sur GitHub
Ouvrir n'importe quel `.md` ci-dessus — GitHub rend les blocs ```mermaid` directement.

### En local
```bash
# Installation
npm install -g @mermaid-js/mermaid-cli

# Génération SVG depuis un fichier
mmdc -i uml/mcd.md -o uml/mcd.svg
```

### Édition interactive
https://mermaid.live — colle le bloc, ajuste, exporte.

## Source de vérité

Tous les diagrammes sont synchronisés avec :
- `lib/core/database/app_database.dart` (schéma BDD Drift)
- `lib/features/*/data/*_repository.dart` (couche données)
- `lib/features/admin/domain/role.dart` (RBAC)
- `lib/core/router/app_router.dart` (routes + guards)

Si tu modifies un de ces fichiers, mets à jour le diagramme correspondant.

## Stack & contraintes représentées

- **Drift (SQLite)** sur les 5 plateformes (Android/iOS/Web/Windows/macOS/Linux)
- **Firebase Auth** + fallback local Isar (auth bicéphale tolérant aux pannes)
- **RBAC 3 niveaux** : owner / collaborator / user
- **Audit log immuable** pour toute action admin
- **Cart/Tickets/Orders user-scoped** par `ownerEmail` (multi-comptes)
