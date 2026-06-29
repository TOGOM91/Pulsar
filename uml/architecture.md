# Architecture globale (Pulsar)

> Backend : **Cloud Firestore + Firebase Auth** (mis à jour après migration depuis Isar/Drift).

## Vue d'ensemble (Clean Architecture, Feature-First)

```mermaid
flowchart TB
    subgraph Presentation["PRESENTATION (par feature)"]
        SC[Screens / Widgets]
        PR[Providers Riverpod]
    end
    subgraph Domain["DOMAIN"]
        MOD[Models / Entities]
        SVC[Services métier - AuthService, PaymentService]
    end
    subgraph Data["DATA"]
        REPO[Repositories - Event/Cart/Order/Ticket/Admin]
        FSS[FirestoreService]
    end
    subgraph Firebase["FIREBASE (cloud)"]
        AUTH[(Firebase Auth)]
        FS[(Cloud Firestore)]
        RULES{{firestore.rules}}
    end

    SC --> PR
    PR --> REPO
    PR --> SVC
    SVC --> FSS
    REPO --> FSS
    SVC --> AUTH
    FSS --> FS
    FS --- RULES
    AUTH --- RULES
```

## Diagramme de déploiement

```mermaid
flowchart LR
    subgraph Clients
        WEB[Web - pulsar-7d45e.web.app]
        AND[Android]
        IOS[iOS]
        WIN[Windows]
    end
    subgraph GCP["Firebase / Google Cloud"]
        HOST[Firebase Hosting]
        AUTH[(Firebase Auth)]
        FS[(Cloud Firestore + règles + index)]
    end
    EXT1[CDN images - Unsplash etc.]
    STRIPE[Stripe - paiement, à venir]

    WEB --> HOST
    WEB --> AUTH
    WEB --> FS
    AND --> AUTH
    AND --> FS
    IOS --> AUTH
    IOS --> FS
    WIN -. support Firestore limité .-> FS
    Clients --> EXT1
    Clients -. paiement réel futur .-> STRIPE
```

## Notes
- **Offline-first** sur natif : persistance Firestore (IndexedDB désactivée sur web — voir `main.dart`).
- **Sécurité** : `firestore.rules` (RBAC owner/collaborator/user, audit append-only, default-deny).
- **Limite connue** : totaux de commande calculés côté client → prévoir **Cloud Functions + webhook Stripe** pour la prod payante.
- ⚠️ `cloud_firestore` n'est pas officiellement supporté sur **Windows desktop** : tester sur web/Android/iOS.
