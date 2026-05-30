# Pulsar — Diagrammes d'activité

Les flux critiques de l'app, du démarrage à un refund admin.

## 1. Démarrage de l'app

```mermaid
flowchart TD
    START([User ouvre Pulsar])
    INIT[WidgetsFlutterBinding.ensureInitialized]
    UI[SystemChrome status bar + orientations]

    FB{Firebase<br/>initializeApp ?}
    FB_OK[firebaseReady = true]
    FB_KO[firebaseReady = false<br/>debugPrint warning]

    DB[AppDatabase ouvre pulsar_db.sqlite<br/>via Drift driftDatabase]
    SEED{Marker event<br/>'biennale-design-2026'<br/>présent ?}
    SEED_NO[clear isar_events<br/>insertAll 16 events seed]
    SEED_YES[skip]
    SETTINGS{App settings<br/>singleton existe ?}
    SETTINGS_INIT[insert defaults<br/>tax 20% serviceFee 5% etc]
    PROMOS{Codes promo<br/>seedés ?}
    PROMOS_INIT[insert 5 codes seed<br/>PULSAR10 ECO20 SUMMER50 etc]

    RUN[runApp ProviderScope<br/>override firebaseReadyProvider<br/>override appDatabaseProvider]
    SPLASH[/splash 1.7s/]
    REDIRECT{Auth state ?}
    ONBOARD[/onboarding/]
    HOME[/home/]
    WELCOME[/welcome/]

    START --> INIT --> UI --> FB
    FB -- OK --> FB_OK
    FB -- KO --> FB_KO
    FB_OK --> DB
    FB_KO --> DB
    DB --> SEED
    SEED -- non --> SEED_NO --> SETTINGS
    SEED -- oui --> SEED_YES --> SETTINGS
    SETTINGS -- non --> SETTINGS_INIT --> PROMOS
    SETTINGS -- oui --> PROMOS
    PROMOS -- non --> PROMOS_INIT --> RUN
    PROMOS -- oui --> RUN
    RUN --> SPLASH --> REDIRECT
    REDIRECT -- Authenticated + !isOnboarded --> ONBOARD
    REDIRECT -- Authenticated + isOnboarded --> HOME
    REDIRECT -- Unauthenticated --> WELCOME

    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef ko fill:#F59E0B,stroke:#B45309,color:#fff
    classDef nav fill:#7C3AED,stroke:#5B21B6,color:#fff
    class FB_OK ok
    class FB_KO ko
    class ONBOARD,HOME,WELCOME nav
```

## 2. Auth — Register & Sign-in (fallback Firebase → local)

```mermaid
flowchart TD
    START([User submit register/login])
    AUTHN[AuthNotifier.register or signIn]
    CHECK{firebaseReady<br/>+ FirebaseAuthService init OK ?}

    FB_PATH[FirebaseAuthService.signIn<br/>createUserWithEmail / signInWithEmail]
    LOCAL_PATH[AuthService.signIn<br/>SHA-256 + sel local]

    FB_OK[Firebase user créé/connecté]
    FB_KO{FirebaseAuthException}
    FB_FRIENDLY[mapping code → message FR]

    SUSP{Profile<br/>isSuspended ?}
    SUSP_OUT[AuthFailure 'Compte suspendu']

    UPSERT[upsert IsarUserProfile<br/>auto-promote owner si email whitelist]
    SESSION[set IsarAuthSession.activeEmail]
    LASTLOGIN[update lastLoginAt]
    SUCCESS[AuthSuccess profile]
    NOTIFY[AuthNotifier state = AuthAuthenticated]
    REDIRECT[GoRouter refreshListenable → redirect]
    DEST{isOnboarded ?}
    GOTO_HOME[/home/]
    GOTO_ONBOARD[/onboarding/]

    START --> AUTHN --> CHECK
    CHECK -- oui --> FB_PATH --> FB_KO
    FB_KO -- success --> FB_OK
    FB_KO -- exception --> FB_FRIENDLY --> NOTIFY_FAIL[AuthFailure friendly]
    CHECK -- non --> LOCAL_PATH

    FB_OK --> SUSP
    LOCAL_PATH --> SUSP
    SUSP -- oui --> SUSP_OUT --> NOTIFY_FAIL
    SUSP -- non --> UPSERT --> SESSION --> LASTLOGIN --> SUCCESS --> NOTIFY --> REDIRECT --> DEST
    DEST -- oui --> GOTO_HOME
    DEST -- non --> GOTO_ONBOARD

    classDef fb fill:#06B6D4,stroke:#0E7490,color:#fff
    classDef local fill:#10B981,stroke:#047857,color:#fff
    classDef ko fill:#EF4444,stroke:#991B1B,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    class FB_PATH,FB_OK fb
    class LOCAL_PATH local
    class SUSP_OUT,NOTIFY_FAIL ko
    class SUCCESS,NOTIFY ok
```

## 3. Checkout — Panier → Order → Paiement → Tickets

```mermaid
flowchart TD
    START([User tape 'Payer maintenant'])
    GET_PROFILE[Read current profile]
    GET_SETTINGS[Read appSettingsProvider]
    CHECK_LIMIT{itemCount ≤<br/>maxTicketsPerOrder ?}
    REJECT_LIMIT[Toast 'Maximum N billets']
    CHECK_MAINT{maintenanceMode ?}
    REJECT_MAINT[Toast maintenanceMessage]

    LOADING[Show CheckoutProgressDialog]

    CREATE_ORDER[OrderRepository.createPending<br/>insert isar_orders<br/>status='pending'<br/>generate orderId UUID]

    CHARGE[PaymentService.charge]
    SIM{paymentSimulation ?}
    SIM_DELAY[Future.delayed 800ms]
    SIM_FAIL{rng 2% ?}
    SIM_OK[transactionId='sim_xxx']
    STRIPE{stripePublishableKey<br/>configurée ?}
    STRIPE_FAIL[Result.failure 'Stripe non configuré']
    STRIPE_TODO[Result.failure 'TODO flutter_stripe']

    RESULT{PaymentResult.success ?}
    MARK_FAILED[markFailed orderId, reason]
    SHOW_FAIL[Toast '❌ failureReason']
    GENERATE[Boucle items: TicketRepository.createTicket × quantity<br/>chaque ticket = UUID + qrCodeData]
    MARK_PAID[markPaid orderId, ticketIds]
    STATS[AuthService.updateProfile<br/>+eventsBookedDelta<br/>+moneySavedDelta<br/>+co2SavedKgDelta x18kg]
    CLEAR[CartNotifier.clearCart<br/>appliedPromoProvider = null]
    INVALIDATE[ref.invalidate dashboardStatsProvider]
    CONFETTI[Dialog confetti + 'Voir mes billets']
    GOTO_TICKETS[/tickets/]

    START --> GET_PROFILE --> GET_SETTINGS --> CHECK_LIMIT
    CHECK_LIMIT -- non --> REJECT_LIMIT
    CHECK_LIMIT -- oui --> CHECK_MAINT
    CHECK_MAINT -- oui --> REJECT_MAINT
    CHECK_MAINT -- non --> LOADING --> CREATE_ORDER --> CHARGE
    CHARGE --> SIM
    SIM -- oui --> SIM_DELAY --> SIM_FAIL
    SIM_FAIL -- 1/50 fail --> RESULT
    SIM_FAIL -- 49/50 success --> SIM_OK --> RESULT
    SIM -- non --> STRIPE
    STRIPE -- absent --> STRIPE_FAIL --> RESULT
    STRIPE -- présent --> STRIPE_TODO --> RESULT

    RESULT -- non --> MARK_FAILED --> SHOW_FAIL
    RESULT -- oui --> GENERATE --> MARK_PAID --> STATS --> CLEAR --> INVALIDATE --> CONFETTI --> GOTO_TICKETS

    classDef warn fill:#F59E0B,stroke:#B45309,color:#fff
    classDef ko fill:#EF4444,stroke:#991B1B,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    class REJECT_LIMIT,REJECT_MAINT warn
    class MARK_FAILED,SHOW_FAIL,STRIPE_FAIL,STRIPE_TODO ko
    class MARK_PAID,CONFETTI,GOTO_TICKETS ok
```

## 4. Admin — CRUD événement avec audit log

```mermaid
flowchart TD
    START([Admin/Staff clique +Nouveau])
    ROUTE[/admin/events/new/]
    GUARD{role.isAdmin ?}
    REDIRECT_HOME[Redirect home]

    FORM[AdminEventEditScreen<br/>form vide]
    USER_FILL[Saisie : nom, catégorie, date,<br/>prix, genres, badges...]
    SUBMIT[Tap 'Créer']

    VALIDATE{Form.validate ?}
    FORM_ERR[Show field errors]

    INPUT[Build AdminEventInput]
    CALL_REPO[AdminRepository.createEvent<br/>actor + input]

    GEN_ID[eventId = 'evt-' + uuid8]
    INSERT[INSERT isar_events]
    AUDIT[INSERT isar_admin_actions<br/>action='event.create'<br/>actorEmail, entityId, details JSON]

    INVALIDATE[ref.invalidate<br/>adminEventsListProvider<br/>allEventsProvider<br/>trendingEventsProvider<br/>upcomingEventsProvider]
    TOAST[Snackbar 'Créé']
    POP[context.pop → /admin/events]

    UPDATE([Admin tape 'Éditer'])
    FIND[findEvent eventId]
    FORM_HYDRATE[hydrate form]
    UPDATE_INPUT[Build AdminEventInput]
    UPDATE_CALL[updateEvent actor, id, input]
    UPDATE_DB[UPDATE isar_events SET...]
    UPDATE_AUDIT[audit 'event.update']

    DELETE([Owner only — menu Supprimer])
    DEL_CHECK{role.canDeleteEvent ?}
    DEL_HIDE[Action absente du menu]
    CONFIRM[Dialog 'Supprimer ?']
    DEL_CALL[deleteEvent actor, id]
    DEL_DB[DELETE FROM isar_events]
    DEL_AUDIT[audit 'event.delete']
    NOTE_TICKETS[Tickets émis restent valides<br/>foreign key event_id devient orpheline]

    START --> GUARD
    GUARD -- non --> REDIRECT_HOME
    GUARD -- oui --> ROUTE --> FORM --> USER_FILL --> SUBMIT --> VALIDATE
    VALIDATE -- non --> FORM_ERR
    VALIDATE -- oui --> INPUT --> CALL_REPO --> GEN_ID --> INSERT --> AUDIT --> INVALIDATE --> TOAST --> POP

    UPDATE --> FIND --> FORM_HYDRATE --> USER_FILL
    UPDATE_INPUT --> UPDATE_CALL --> UPDATE_DB --> UPDATE_AUDIT --> INVALIDATE

    DELETE --> DEL_CHECK
    DEL_CHECK -- non --> DEL_HIDE
    DEL_CHECK -- oui --> CONFIRM --> DEL_CALL --> DEL_DB --> DEL_AUDIT --> NOTE_TICKETS --> INVALIDATE

    classDef ko fill:#EF4444,stroke:#991B1B,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef audit fill:#7C3AED,stroke:#5B21B6,color:#fff
    class REDIRECT_HOME,FORM_ERR,DEL_HIDE ko
    class TOAST,POP ok
    class AUDIT,UPDATE_AUDIT,DEL_AUDIT audit
```

## 5. Router guard — Redirect logic

```mermaid
flowchart TD
    REQ([Navigation requested])
    REFRESH[Listen authProvider via _AuthRefreshNotifier]
    REDIRECT[GoRouter.redirect]

    LOC[loc = state.matchedLocation]
    SPLASH{loc == /splash ?}
    PASS_SPLASH[return null pass]

    AUTH[Read authProvider current value]
    LOADING_S{auth is AuthLoading ?}
    PASS_LOADING[return null]

    UNAUTH_S{auth is AuthUnauthenticated ?}
    AUTH_ROUTE{loc in welcome/register/login ?}
    PASS_AUTH_ROUTE[return null]
    GO_WELCOME[return /welcome]

    AUTHED_S{auth is AuthAuthenticated ?}
    ONBOARDED{profile.isOnboarded ?}
    ON_ROUTE{loc == /onboarding ?}
    GO_ONBOARD[return /onboarding]
    GO_HOME_FROM_OB[return /]
    AUTH_ROUTE2{loc in welcome/register/login ?}
    GO_HOME[return /]
    ADMIN_PREFIX{loc startsWith /admin ?}
    ROLE_CHECK{role.isAdmin ?}
    GO_HOME_DENIED[return /]
    PASS[return null]

    REQ --> REFRESH --> REDIRECT --> LOC
    LOC --> SPLASH
    SPLASH -- oui --> PASS_SPLASH
    SPLASH -- non --> AUTH
    AUTH --> LOADING_S
    LOADING_S -- oui --> PASS_LOADING
    LOADING_S -- non --> UNAUTH_S
    UNAUTH_S -- oui --> AUTH_ROUTE
    AUTH_ROUTE -- oui --> PASS_AUTH_ROUTE
    AUTH_ROUTE -- non --> GO_WELCOME
    UNAUTH_S -- non --> AUTHED_S
    AUTHED_S -- oui --> ONBOARDED
    ONBOARDED -- non --> ON_ROUTE
    ON_ROUTE -- oui --> PASS
    ON_ROUTE -- non --> GO_ONBOARD
    ONBOARDED -- oui --> ON_ROUTE2{loc == /onboarding ?}
    ON_ROUTE2 -- oui --> GO_HOME_FROM_OB
    ON_ROUTE2 -- non --> AUTH_ROUTE2
    AUTH_ROUTE2 -- oui --> GO_HOME
    AUTH_ROUTE2 -- non --> ADMIN_PREFIX
    ADMIN_PREFIX -- oui --> ROLE_CHECK
    ROLE_CHECK -- non --> GO_HOME_DENIED
    ROLE_CHECK -- oui --> PASS
    ADMIN_PREFIX -- non --> PASS

    classDef redirect fill:#F59E0B,stroke:#B45309,color:#fff
    classDef pass fill:#10B981,stroke:#047857,color:#fff
    class GO_WELCOME,GO_ONBOARD,GO_HOME,GO_HOME_FROM_OB,GO_HOME_DENIED redirect
    class PASS,PASS_LOADING,PASS_AUTH_ROUTE,PASS_SPLASH pass
```

## 6. Refund — Admin rembourse une commande

```mermaid
flowchart TD
    START([Owner clique 'Rembourser' sur une commande paid])
    DIALOG[Dialog montant pré-rempli + motif]
    SUBMIT{Confirme ?}
    CANCEL[Fin]

    CALL[AdminRepository.refundOrder<br/>actor, orderId, reason, partialAmount?]
    CHECK_PAID{order.status == 'paid' ?}
    SKIP[return order inchangée]

    DECIDE{partialAmount <<br/>order.total ?}
    PARTIAL[status = 'partial_refund']
    FULL[status = 'refunded']

    UPDATE_ORDER[UPDATE isar_orders SET<br/>status, refundedAt, refundReason,<br/>refundAmount, refundedByEmail]

    LOOP_TICKETS[Boucle order.ticketIds]
    GET_T[SELECT isar_tickets WHERE ticket_id]
    IS_CONFIRMED{ticket.status == 'confirmed' ?}
    SKIP_T[skip]
    CANCEL_T[UPDATE status='cancelled'<br/>cancelledAt=NOW<br/>refundAmount = total/N]

    AUDIT[INSERT isar_admin_actions<br/>action='order.refund'<br/>details JSON: amount, reason]
    INVALIDATE[invalidate adminOrdersListProvider<br/>dashboardStatsProvider]

    START --> DIALOG --> SUBMIT
    SUBMIT -- Annuler --> CANCEL
    SUBMIT -- Rembourser --> CALL --> CHECK_PAID
    CHECK_PAID -- non --> SKIP
    CHECK_PAID -- oui --> DECIDE
    DECIDE -- partiel --> PARTIAL --> UPDATE_ORDER
    DECIDE -- total --> FULL --> UPDATE_ORDER
    UPDATE_ORDER --> LOOP_TICKETS --> GET_T --> IS_CONFIRMED
    IS_CONFIRMED -- non --> SKIP_T --> LOOP_TICKETS
    IS_CONFIRMED -- oui --> CANCEL_T --> LOOP_TICKETS
    LOOP_TICKETS -- fin --> AUDIT --> INVALIDATE

    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef audit fill:#7C3AED,stroke:#5B21B6,color:#fff
    class UPDATE_ORDER,CANCEL_T ok
    class AUDIT audit
```

## 7. Change role — Owner promeut un user

```mermaid
flowchart TD
    START([Owner ouvre /admin/users])
    POPUP[Tap menu '⋮' → 'Changer rôle']
    SHEET[BottomSheet 3 choix : user / collaborator / owner]
    PICK[Owner sélectionne newRole]

    CALL[AdminRepository.changeRole<br/>actor, targetEmail, newRole]
    FIND[findUser targetEmail]
    SELF_DEMOTE{target == actor && newRole != owner ?}
    COUNT_OWNERS{owners.length ≤ 1 ?}
    REFUSE[return target unchanged<br/>évite la perte du dernier owner]

    UPDATE[UPDATE isar_user_profiles<br/>SET role = newRole.wire<br/>WHERE email = target.email]
    AUDIT[INSERT isar_admin_actions<br/>action='user.role.change'<br/>details: from, to]
    INVALIDATE[invalidate adminUsersListProvider<br/>authProvider — si target == current user]
    SNACK[Snackbar 'Nom → newRole.label']

    START --> POPUP --> SHEET --> PICK --> CALL --> FIND --> SELF_DEMOTE
    SELF_DEMOTE -- oui --> COUNT_OWNERS
    COUNT_OWNERS -- oui --> REFUSE
    COUNT_OWNERS -- non --> UPDATE
    SELF_DEMOTE -- non --> UPDATE
    UPDATE --> AUDIT --> INVALIDATE --> SNACK

    classDef refuse fill:#F59E0B,stroke:#B45309,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef audit fill:#7C3AED,stroke:#5B21B6,color:#fff
    class REFUSE refuse
    class UPDATE,SNACK ok
    class AUDIT audit
```

## 8. Suspend / Reinstate user

```mermaid
flowchart TD
    START([Owner ouvre /admin/users])
    SUSP_PICK[Menu '⋮' → 'Suspendre']
    ASK_REASON[Dialog 'Motif']
    DEFAULT_REASON{reason vide ?}
    USE_DEFAULT[reason = 'Non précisé']

    SUSP_CALL[AdminRepository.suspendUser]
    SUSP_UPDATE[UPDATE isar_user_profiles SET<br/>is_suspended=true<br/>suspended_reason<br/>suspended_at=NOW]
    SUSP_AUDIT[audit 'user.suspend' details reason]
    SUSP_REFRESH[invalidate users + auth]
    SUSP_NOTE[Au prochain sign-in : AuthFailure 'Compte suspendu']

    RE_PICK[Menu '⋮' → 'Réintégrer']
    RE_CALL[reinstateUser]
    RE_UPDATE[UPDATE SET is_suspended=false<br/>suspended_reason=NULL<br/>suspended_at=NULL]
    RE_AUDIT[audit 'user.reinstate']
    RE_REFRESH[invalidate users + auth]

    START --> SUSP_PICK --> ASK_REASON --> DEFAULT_REASON
    DEFAULT_REASON -- oui --> USE_DEFAULT --> SUSP_CALL
    DEFAULT_REASON -- non --> SUSP_CALL
    SUSP_CALL --> SUSP_UPDATE --> SUSP_AUDIT --> SUSP_REFRESH --> SUSP_NOTE

    START --> RE_PICK --> RE_CALL --> RE_UPDATE --> RE_AUDIT --> RE_REFRESH

    classDef ko fill:#EF4444,stroke:#991B1B,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef audit fill:#7C3AED,stroke:#5B21B6,color:#fff
    class SUSP_UPDATE,SUSP_NOTE ko
    class RE_UPDATE ok
    class SUSP_AUDIT,RE_AUDIT audit
```

## 9. Broadcast notification

```mermaid
flowchart TD
    START([Admin/Staff /admin/notifications])
    COMPOSE[Saisie titre + corps + catégorie + audience + actionRoute?]
    SUBMIT[Tap 'Envoyer']
    VALIDATE{titre + corps non vides ?}
    SHOW_ERR[Snackbar 'Titre et corps requis']

    GEN[broadcastId = 'br-' + uuid8]
    INSERT[INSERT isar_broadcast_notifications<br/>title body category audience<br/>actionRoute sentAt sentByEmail]
    AUDIT[audit 'broadcast.send' details: title, audience]
    LOCAL_REPLAY[notificationsProvider.pushLocal<br/>injecte AppNotification en tête de la liste]
    INVALIDATE[invalidate broadcastsProvider]
    CLEAR[clear form]
    TOAST[Snackbar verte 'Notification envoyée']

    START --> COMPOSE --> SUBMIT --> VALIDATE
    VALIDATE -- non --> SHOW_ERR
    VALIDATE -- oui --> GEN --> INSERT --> AUDIT --> LOCAL_REPLAY --> INVALIDATE --> CLEAR --> TOAST

    note1[Note : actuellement push localement à<br/>l'envoyeur seulement. Pour push réel multi-device,<br/>brancher Firebase Messaging côté Cloud Function]

    classDef ko fill:#EF4444,stroke:#991B1B,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    classDef audit fill:#7C3AED,stroke:#5B21B6,color:#fff
    class SHOW_ERR ko
    class TOAST,LOCAL_REPLAY ok
    class AUDIT audit
```

## 10. Promo apply au checkout

```mermaid
flowchart TD
    START([User saisit code dans le panier])
    APPLY[_PromoSection.apply]
    LOOKUP[findPromoByCodeProvider]
    READ_ACTIVE[availablePromosProvider<br/>= admin_promos filtrés isActive=true + non expirés + maxUses non atteint]

    FOUND{code matché ?}
    INVALID[Show error 'Code invalide']

    BREAKDOWN[Read checkoutBreakdownProvider<br/>subtotal courant]
    MIN_CHECK{subtotal ≥ promo.minSubtotal ?}
    MIN_FAIL[Show error 'Minimum N€ requis']

    APPLIED[appliedPromoProvider.state = code]
    RECOMPUTE[CheckoutBreakdown.from recalcule<br/>discount, serviceFee, tax, total]
    UI_UPDATE[UI affiche chip 'CODE APPLIQUÉ -X%']
    CHECKOUT[Pendant checkout, OrderRepository.createPending<br/>persiste promoCode = code]

    START --> APPLY --> LOOKUP --> READ_ACTIVE --> FOUND
    FOUND -- non --> INVALID
    FOUND -- oui --> BREAKDOWN --> MIN_CHECK
    MIN_CHECK -- non --> MIN_FAIL
    MIN_CHECK -- oui --> APPLIED --> RECOMPUTE --> UI_UPDATE
    UI_UPDATE --> CHECKOUT

    classDef ko fill:#EF4444,stroke:#991B1B,color:#fff
    classDef ok fill:#10B981,stroke:#047857,color:#fff
    class INVALID,MIN_FAIL ko
    class APPLIED,UI_UPDATE,CHECKOUT ok
```
