# Diagramme de navigation (GoRouter)

Source : `lib/core/router/app_router.dart`. Une `ShellRoute` héberge les 5 onglets
principaux (+ onglet Admin si rôle). Un `redirect` global gère l'auth, l'onboarding
et la garde `/admin/*`.

```mermaid
flowchart TD
    Splash["/splash"] --> Welcome["/welcome"]
    Welcome --> Login["/login"]
    Welcome --> Register["/register"]
    Login --> Onboarding["/onboarding"]
    Register --> Onboarding
    Onboarding --> Shell

    subgraph Shell["ShellRoute (barre de navigation)"]
        Home["/ (home)"]
        Explore["/explore"]
        Tickets["/tickets"]
        Profile["/profile"]
        Admin["/admin (si rôle admin)"]
    end

    Home --> EventDetail["/event/:id"]
    Explore --> EventDetail
    EventDetail --> Cart["/cart"]
    EventDetail --> Transport["/transport/:eventId"]
    EventDetail --> Accommodation["/accommodation/:eventId"]
    Home --> Map["/map"]
    Home --> Notifications["/notifications"]
    Profile --> ProfileEdit["/profile/edit"]
    Profile --> Settings["/settings"]
    Profile --> Favorites["/favorites"]
    Profile --> EcoScore["/eco-score"]

    subgraph AdminZone["Zone Admin — garde : role.isAdmin"]
        Admin --> AdmEvents["/admin/events"]
        AdmEvents --> AdmEventNew["/admin/events/new"]
        AdmEvents --> AdmEventEdit["/admin/events/:id"]
        Admin --> AdmUsers["/admin/users (owner)"]
        Admin --> AdmOrders["/admin/orders"]
        Admin --> AdmPromos["/admin/promos"]
        Admin --> AdmSettings["/admin/settings (owner)"]
        Admin --> AdmNotifs["/admin/notifications"]
        Admin --> AdmAudit["/admin/audit (owner)"]
    end
```

## Règles de redirection (`redirect`)
- Non authentifié + route protégée → `/welcome`.
- Authentifié non onboardé → `/onboarding`.
- Route `/admin/*` sans rôle admin → `/` (Home).
- Authentifié sur une page d'auth → `/` (Home).
