# MCD — Modèle Conceptuel de Données (Pulsar)

> Backend réel : **Cloud Firestore** (documentaire). Le MCD exprime le métier ;
> la traduction NoSQL est dans `mld.md`.

## Diagramme entité-association (Mermaid)

```mermaid
erDiagram
    UTILISATEUR ||--o{ COMMANDE       : "passe"
    UTILISATEUR ||--o{ BILLET         : "possede"
    UTILISATEUR ||--o{ MOYEN_PAIEMENT : "enregistre"
    UTILISATEUR ||--o{ ACTION_ADMIN   : "effectue"
    UTILISATEUR ||--o{ DIFFUSION      : "envoie"
    UTILISATEUR }o--o{ EVENEMENT      : "panier"
    UTILISATEUR }o--o{ EVENEMENT      : "favori"

    COMMANDE   }o--o| CODE_PROMO       : "utilise"
    COMMANDE   ||--o{ BILLET           : "contient"
    BILLET     }o--|| EVENEMENT        : "concerne"

    EVENEMENT  }o--o{ GENRE            : "categorise"
    EVENEMENT  ||--o{ BADGE            : "affiche"

    UTILISATEUR {
        string email PK
        string name
        string role "user|collaborator|owner"
        bool   isSuspended
        int    memberSince
        float  budgetMax
        bool   ecoMode
        bool   isOnboarded
        int    eventsBooked
        float  co2SavedKg
        float  moneySavedEur
        int    percentile
        date   createdAt
        date   lastLoginAt
    }
    EVENEMENT {
        string eventId PK
        string name
        string category
        string date
        string location
        string transport
        string accommodation
        float  pricingAmount
        string section "trending|upcoming"
        int    sortOrder
        bool   isPublished
        int    totalTicketsSold
        float  totalRevenue
    }
    GENRE {
        string libelle PK
    }
    BADGE {
        string badgeId PK
        string type
        string texte
    }
    BILLET {
        string ticketId PK
        float  price
        string ticketType
        string status "confirmed|used|cancelled|transferred"
        date   purchaseDate
        string qrCodeData
        date   eventDateParsed
        float  refundAmount
    }
    COMMANDE {
        string orderId PK
        date   placedAt
        float  subtotal
        float  discount
        float  serviceFee
        float  tax
        float  total
        string status "pending|paid|failed|refunded|partial_refund"
        int    itemCount
    }
    CODE_PROMO {
        string code PK
        string discountType "percent|fixed"
        float  discountValue
        float  minSubtotal
        int    maxUses
        bool   isActive
    }
    MOYEN_PAIEMENT {
        string methodId PK
        string brand
        string last4
        bool   isDefault
    }
    ACTION_ADMIN {
        string id PK
        string action
        string entityType
        string entityId
        date   at
    }
    DIFFUSION {
        string broadcastId PK
        string title
        string audience
        date   sentAt
    }
```

## Cardinalités (min,max) — notation Merise

| Association | Côté A | Côté B |
|-------------|--------|--------|
| passe (UTILISATEUR–COMMANDE) | (0,n) | (1,1) |
| possede (UTILISATEUR–BILLET) | (0,n) | (1,1) |
| contient (COMMANDE–BILLET) | (0,n) | (0,1) |
| concerne (BILLET–EVENEMENT) | (0,n) | (1,1) |
| utilise (COMMANDE–CODE_PROMO) | (0,1) | (0,n) |
| panier (UTILISATEUR–EVENEMENT) | (0,n) | (0,n) — *porte : quantite, ticketType, options* |
| favori (UTILISATEUR–EVENEMENT) | (0,n) | (0,n) — *porte : addedAt* |
| categorise (EVENEMENT–GENRE) | (0,n) | (0,n) |
| affiche (EVENEMENT–BADGE) | (1,n) | (1,1) |
| enregistre (UTILISATEUR–MOYEN_PAIEMENT) | (1,1) | (0,n) |
| effectue (UTILISATEUR–ACTION_ADMIN) | (1,1) | (0,n) |
| envoie (UTILISATEUR–DIFFUSION) | (1,1) | (0,n) |

> **PARAMETRES_APP** : entité singleton (document `app_settings/app`), non associée,
> modifiable uniquement par l'owner.
