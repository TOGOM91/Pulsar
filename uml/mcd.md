# Pulsar — Modèle Conceptuel de Données (MCD)

Vue métier des entités et de leurs relations.
Les attributs identifiants sont préfixés `#`. Les relations portent un verbe et leur cardinalité.

## Diagramme global

```mermaid
erDiagram
    USER_PROFILE ||--o| AUTH_SESSION : "est_actif_dans"
    USER_PROFILE ||--o{ ORDER : passe
    USER_PROFILE ||--o{ TICKET : possede
    USER_PROFILE ||--o{ CART_ITEM : remplit
    USER_PROFILE ||--o{ FAVORITE : ajoute
    USER_PROFILE ||--o{ PAYMENT_METHOD : enregistre
    USER_PROFILE ||--o{ ADMIN_ACTION : "exécute (actor)"
    USER_PROFILE ||--o{ BROADCAST_NOTIFICATION : "envoie (sentBy)"
    USER_PROFILE }o--|| USER_PROFILE : "modifie (admin)"

    EVENT ||--o{ TICKET : "est vendu en"
    EVENT ||--o{ CART_ITEM : "est ajouté à"
    EVENT ||--o{ FAVORITE : "est mis en favori"
    EVENT }o--|| USER_PROFILE : "créé/modifié par"

    ORDER ||--o{ TICKET : génère
    ORDER }o--o| PROMO_CODE : applique
    ORDER }o--|| PAYMENT_METHOD : "réglée via"

    PROMO_CODE }o--|| USER_PROFILE : "créé par (admin)"

    APP_SETTINGS ||--o| USER_PROFILE : "mis à jour par (owner)"

    USER_PROFILE {
        string email PK
        string name
        string passwordHash
        string role "user|collaborator|owner"
        bool isSuspended
        string locationName
        string language
        bool darkMode
        bool ecoMode
        bool notificationsEnabled
        int eventsBooked
        float co2SavedKg
        float moneySavedEur
        int percentile
        datetime createdAt
        datetime lastLoginAt
    }

    AUTH_SESSION {
        string key PK "singleton 'session'"
        string activeEmail FK
        datetime loggedInAt
    }

    EVENT {
        string eventId PK
        string name
        string category
        string duration
        string imageUrl
        string date
        string location
        string transport
        string accommodation
        float pricingAmount
        float pricingSavings
        string currency
        list genres
        bool isPublished
        int totalTicketsSold
        float totalRevenue
        datetime createdAt
        datetime updatedAt
        string updatedByEmail FK
    }

    TICKET {
        string ticketId PK
        string eventId FK
        string ownerEmail FK
        string orderId FK
        float price
        string status "confirmed|cancelled|transferred|used|expired"
        string qrCodeData
        datetime purchaseDate
        datetime eventDateParsed
        string transferredToEmail
        datetime cancelledAt
        float refundAmount
    }

    CART_ITEM {
        string ownerEmail FK
        string eventId FK
        int quantity
        float unitPrice
        string ticketType
        string transportOption
        float transportPrice
        string accommodationOption
        float accommodationPrice
    }

    ORDER {
        string orderId PK
        string customerEmail FK
        datetime placedAt
        float subtotal
        float discount
        float serviceFee
        float tax
        float total
        string currency
        string promoCode FK
        string paymentMethod
        string paymentBrand
        string paymentLast4
        string status "pending|paid|failed|refunded|partial_refund"
        int itemCount
        list ticketIds
        string refundReason
        datetime refundedAt
        float refundAmount
        string refundedByEmail FK
    }

    PROMO_CODE {
        string code PK
        string label
        string emoji
        string discountType "percent|fixed"
        float discountValue
        float minSubtotal
        datetime expiresAt
        int maxUses
        int usedCount
        bool isActive
        datetime createdAt
        string createdByEmail FK
    }

    APP_SETTINGS {
        string key PK "singleton 'app'"
        float taxRate
        float serviceFeeRate
        string supportEmail
        bool maintenanceMode
        string maintenanceMessage
        int maxTicketsPerOrder
        string currencyCode
        string currencySymbol
        string stripePublishableKey
        bool paymentSimulation
        datetime updatedAt
        string updatedByEmail FK
    }

    PAYMENT_METHOD {
        string methodId PK
        string ownerEmail FK
        string brand "visa|mastercard|amex|applepay|googlepay|paypal"
        string last4
        string holder
        string expiry
        bool isDefault
        datetime createdAt
    }

    FAVORITE {
        string userEmail FK
        string eventId FK
        datetime addedAt
    }

    ADMIN_ACTION {
        string actorEmail FK
        string actorRole
        string action "event.create|user.role.change|order.refund|..."
        string entityType
        string entityId
        datetime at
        string details "JSON"
    }

    BROADCAST_NOTIFICATION {
        string broadcastId PK
        string title
        string body
        string category "event|transport|eco|social|system"
        string audience "all|role:user|role:owner|..."
        string actionRoute
        datetime sentAt
        string sentByEmail FK
    }
```

## Cardinalités principales

| Relation | Cardinalité | Sens métier |
|---|---|---|
| USER_PROFILE — ORDER | 1,1 — 0,N | Un utilisateur passe 0 à N commandes ; chaque commande appartient à 1 client |
| USER_PROFILE — TICKET | 1,1 — 0,N | Multi-comptes : tickets scopés par `ownerEmail` |
| USER_PROFILE — CART_ITEM | 1,1 — 0,N | Panier per-user (vide à l'inscription, reset au sign-out) |
| USER_PROFILE — FAVORITE | 1,1 — 0,N | Favoris par utilisateur |
| EVENT — TICKET | 1,1 — 0,N | Un event peut être vendu en N tickets |
| EVENT — CART_ITEM | 1,1 — 0,N | Idem côté panier |
| ORDER — TICKET | 1,1 — 1,N | Une commande génère 1 à N tickets (`ticketIds` list) |
| ORDER — PROMO_CODE | 0,N — 0,1 | Une commande peut avoir 0 ou 1 promo |
| AUTH_SESSION — USER_PROFILE | 0,1 — 0,1 | Singleton ; `activeEmail` null = déconnecté |
| ADMIN_ACTION — USER_PROFILE | 1,1 — 0,N | Chaque action a un acteur unique |

## Contraintes

- **Singletons** : `AUTH_SESSION.key = 'session'`, `APP_SETTINGS.key = 'app'` — clé unique imposée par index UNIQUE Drift.
- **Audit immutable** : aucune mise à jour ni suppression sur `ADMIN_ACTION` (append-only).
- **Auto-promotion** : `kOwnerEmails` whitelist force `role = 'owner'` pour Tom et co-fondateurs à chaque login.
- **Soft delete via `isSuspended`** : un compte suspendu reste en BDD mais bloqué au sign-in.
- **Soft publish via `isPublished`** : un event non publié n'apparaît pas dans `EventRepository.getAllEvents()` mais reste visible côté admin.
