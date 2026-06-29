# Diagrammes d'états (Pulsar)

Cycles de vie des entités à statut explicite.

## 1. Cycle de vie d'un billet (TicketStatus)

```mermaid
stateDiagram-v2
    [*] --> confirmed : createTicket() après paiement
    confirmed --> used : date de l'événement passée (auto-expiration)
    confirmed --> cancelled : cancelTicket() — refund 90%
    confirmed --> transferred : transferTicket(email)
    confirmed --> cancelled : refundOrder() (admin)
    used --> [*]
    cancelled --> [*]
    transferred --> [*]
```

## 2. Cycle de vie d'une commande (OrderStatus)

```mermaid
stateDiagram-v2
    [*] --> pending : createPending()
    pending --> paid : paiement accepté (markPaid)
    pending --> failed : paiement refusé / maintenance (markFailed)
    paid --> refunded : refundOrder() total
    paid --> partial_refund : refundOrder() partiel
    failed --> [*]
    refunded --> [*]
    partial_refund --> [*]
```

## 3. État d'authentification (AuthState)

```mermaid
stateDiagram-v2
    [*] --> AuthLoading : démarrage / action en cours
    AuthLoading --> AuthAuthenticated : profil valide
    AuthLoading --> AuthUnauthenticated : pas de session
    AuthUnauthenticated --> AuthLoading : register / signIn
    AuthAuthenticated --> AuthUnauthenticated : signOut / deleteAccount
    AuthAuthenticated --> AuthUnauthenticated : compte suspendu (forcé)
```
