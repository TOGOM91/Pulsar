# Pulsar — Architecture globale

## Vue d'ensemble (Clean Architecture, Feature-First)

```mermaid
graph TB
    subgraph "Présentation"
        UI[Screens Flutter]
        WIDGETS[Widgets réutilisables]
        ROUTER[GoRouter + Auth/Role Guards]
        SHELL[AppShell — Bottom Nav]
    end

    subgraph "État (Riverpod 2.x)"
        AUTHP[AuthNotifier — AsyncNotifier]
        CARTP[CartNotifier — StateNotifier]
        TICKETP[TicketNotifier — StateNotifier]
        EVENTP[Event Providers — FutureProvider]
        ADMINP[Admin Providers — FutureProvider]
        SETTINGSP[Theme/Locale Providers]
    end

    subgraph "Domaine"
        MODELS[Freezed Models<br/>EventModel, CartItem, TicketModel...]
        SERVICES[AuthService<br/>FirebaseAuthService<br/>PaymentService]
        DTOS[DTOs<br/>AdminEventInput, PromoInput, DashboardStats]
        ROLES[UserRole + RBAC capabilities]
    end

    subgraph "Données"
        REPOS[Repositories<br/>Event, Cart, Order, Ticket, Admin]
        DB[(AppDatabase — Drift)]
        SEED[SeedData]
    end

    subgraph "Plateforme"
        SQLITE[(SQLite natif<br/>Android/iOS/Win/Mac/Lin)]
        WASM[(sqlite3.wasm + drift_worker.js<br/>Navigateur)]
        FIREBASE[Firebase Auth + Hosting]
    end

    UI --> WIDGETS
    UI --> ROUTER
    UI --> SHELL
    UI --> AUTHP & CARTP & TICKETP & EVENTP & ADMINP & SETTINGSP
    ROUTER --> AUTHP

    AUTHP --> SERVICES
    CARTP --> REPOS
    TICKETP --> REPOS
    EVENTP --> REPOS
    ADMINP --> REPOS

    SERVICES --> REPOS
    SERVICES --> FIREBASE
    REPOS --> MODELS
    REPOS --> DTOS
    REPOS --> DB
    SEED --> DB

    DB -.compile native.-> SQLITE
    DB -.compile web.-> WASM

    classDef present fill:#7C3AED,stroke:#5B21B6,color:#fff
    classDef state fill:#06B6D4,stroke:#0E7490,color:#fff
    classDef domain fill:#10B981,stroke:#047857,color:#fff
    classDef data fill:#F59E0B,stroke:#B45309,color:#fff
    classDef platform fill:#6B7280,stroke:#374151,color:#fff
    class UI,WIDGETS,ROUTER,SHELL present
    class AUTHP,CARTP,TICKETP,EVENTP,ADMINP,SETTINGSP state
    class MODELS,SERVICES,DTOS,ROLES domain
    class REPOS,DB,SEED data
    class SQLITE,WASM,FIREBASE platform
```

## Modules par feature

```mermaid
graph LR
    subgraph "core/"
        CORE_DB[database/<br/>AppDatabase + seed]
        CORE_ROUTER[router/<br/>app_router]
        CORE_THEME[theme/<br/>colors + theme]
        CORE_WIDGETS[widgets/<br/>AppShell, GradientButton]
        CORE_PROVIDERS[providers/<br/>core, theme, locale]
    end

    subgraph "features/"
        F_AUTH[auth/]
        F_HOME[home/]
        F_EVENTS[events/]
        F_TICKETS[tickets/]
        F_CART[cart/]
        F_PROFILE[profile/]
        F_SETTINGS[settings/]
        F_NOTIFICATIONS[notifications/]
        F_ADMIN[admin/]
        F_MAP[map/]
        F_TRANSPORT[transport/]
        F_ACCOMMODATION[accommodation/]
        F_FAVORITES[favorites/]
        F_ECO[eco/]
    end

    F_HOME --> F_EVENTS
    F_HOME --> F_CART
    F_HOME --> F_TICKETS
    F_HOME --> F_NOTIFICATIONS

    F_EVENTS --> F_CART
    F_EVENTS --> F_TRANSPORT
    F_EVENTS --> F_ACCOMMODATION
    F_EVENTS --> F_MAP
    F_EVENTS --> F_FAVORITES

    F_CART --> F_TICKETS
    F_CART --> F_ADMIN

    F_PROFILE --> F_AUTH
    F_PROFILE --> F_ADMIN

    F_SETTINGS --> F_AUTH
    F_SETTINGS --> F_ADMIN

    F_ADMIN --> F_EVENTS
    F_ADMIN --> F_CART

    F_AUTH --> CORE_DB
    F_EVENTS --> CORE_DB
    F_CART --> CORE_DB
    F_TICKETS --> CORE_DB
    F_ADMIN --> CORE_DB

    CORE_ROUTER --> F_AUTH

    classDef core fill:#7C3AED,stroke:#5B21B6,color:#fff
    classDef feat fill:#06B6D4,stroke:#0E7490,color:#fff
    class CORE_DB,CORE_ROUTER,CORE_THEME,CORE_WIDGETS,CORE_PROVIDERS core
    class F_AUTH,F_HOME,F_EVENTS,F_TICKETS,F_CART,F_PROFILE,F_SETTINGS,F_NOTIFICATIONS,F_ADMIN,F_MAP,F_TRANSPORT,F_ACCOMMODATION,F_FAVORITES,F_ECO feat
```

## Déploiement multi-plateforme

```mermaid
graph TB
    SRC[Code source Dart unique]

    subgraph "Build Flutter"
        BWEB[flutter build web --release]
        BANDROID[flutter build apk --release]
        BIOS[flutter build ipa --release<br/>Mac requis]
        BWIN[flutter build windows --release]
    end

    subgraph "Distribution"
        FBH[Firebase Hosting<br/>pulsar-7d45e.web.app]
        GHR[GitHub Releases<br/>github.com/TOGOM91/Pulsar/releases]
        TF[TestFlight Apple]
        PS[Play Store / sideload]
    end

    subgraph "Runtime BDD"
        WASM[(SQLite WASM<br/>IndexedDB)]
        SQNATIVE[(SQLite natif<br/>fichier .sqlite local)]
    end

    SRC --> BWEB & BANDROID & BIOS & BWIN

    BWEB --> FBH
    BANDROID --> GHR & PS
    BIOS --> TF
    BWIN --> GHR

    FBH -.via drift_worker.js.-> WASM
    BANDROID -.sqlite3_flutter_libs.-> SQNATIVE
    BIOS -.sqlite3_flutter_libs.-> SQNATIVE
    BWIN -.sqlite3_flutter_libs.-> SQNATIVE

    classDef build fill:#7C3AED,stroke:#5B21B6,color:#fff
    classDef dist fill:#06B6D4,stroke:#0E7490,color:#fff
    classDef runtime fill:#10B981,stroke:#047857,color:#fff
    class BWEB,BANDROID,BIOS,BWIN build
    class FBH,GHR,TF,PS dist
    class WASM,SQNATIVE runtime
```

## Tolérance Firebase (fail-safe)

```mermaid
flowchart TB
    START([App démarre])
    INIT["Firebase.initializeApp()"]
    TRY{Tentative<br/>réussie ?}
    CLOUD["firebaseReadyProvider = true<br/>FirebaseAuthService actif"]
    LOCAL["firebaseReadyProvider = false<br/>AuthService local (Isar/Drift)<br/>+ hash SHA-256 + sel"]
    APP[App démarre normalement<br/>peu importe le chemin]

    START --> INIT
    INIT --> TRY
    TRY -->|OK| CLOUD
    TRY -->|Échec réseau / config| LOCAL
    CLOUD --> APP
    LOCAL --> APP

    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef ko fill:#F59E0B,stroke:#B45309,color:#fff
    class CLOUD ok
    class LOCAL ko
```
