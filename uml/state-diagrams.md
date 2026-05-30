# Pulsar — Diagrammes d'états

Cycles de vie des entités à statut explicite.

## 1. Cycle de vie d'un billet (TicketStatus)

```mermaid
stateDiagram-v2
    [*] --> confirmed : createTicket()<br/>après checkout réussi
    
    confirmed --> cancelled : cancelTicket()<br/>par owner<br/>OR refundOrder de l'order parent<br/>(refund = 90% du prix)
    confirmed --> transferred : transferTicket(email)<br/>par owner
    confirmed --> used : ticketRepo.getAllTickets()<br/>auto-expire si eventDateParsed < J-1<br/>(considéré utilisé)
    confirmed --> expired : (manuel via admin)<br/>jamais déclenché auto pour l'instant
    
    cancelled --> [*]
    transferred --> [*]
    used --> [*]
    expired --> [*]
    
    note right of confirmed
      QR code valide
      Apparaît dans /tickets
    end note
    
    note right of cancelled
      cancelledAt = NOW
      refundAmount calculé
      QR invalide à la scanne
    end note
    
    note right of used
      Status mis à 'used' au prochain
      load après date passée
    end note
```

## 2. Cycle de vie d'une commande (Order.status)

```mermaid
stateDiagram-v2
    [*] --> pending : OrderRepository.createPending()<br/>insert avec status='pending'<br/>ticketIds = []
    
    pending --> paid : markPaid(orderId, ticketIds)<br/>après PaymentService.charge OK<br/>tickets générés
    pending --> failed : markFailed(orderId, reason)<br/>après PaymentService.charge KO
    
    paid --> refunded : refundOrder(actor, id, reason)<br/>+ partialAmount == total OR null<br/>tickets liés → cancelled
    paid --> partial_refund : refundOrder(actor, id, reason,<br/>partialAmount < total)
    
    partial_refund --> partial_refund : (rare) second partial refund
    
    refunded --> [*]
    partial_refund --> [*]
    failed --> [*]
    
    note right of pending
      Toujours créé AVANT le charge
      Si crash réseau → état orphelin
      visible /admin/orders avec filter 'pending'
    end note
    
    note right of paid
      ticketIds populés
      Stats user mises à jour
      Apparait dashboard KPIs
    end note
    
    note right of refunded
      refundedAt, refundReason,
      refundedByEmail tracés
      audit log 'order.refund'
    end note
```

## 3. Cycle de vie d'un compte utilisateur

```mermaid
stateDiagram-v2
    [*] --> unauthenticated : App start, no session
    
    unauthenticated --> registering : Submit form /register
    registering --> unauthenticated : AuthFailure (email exists, weak pwd...)
    registering --> authenticated : AuthSuccess profile created
    
    unauthenticated --> signingIn : Submit form /login
    signingIn --> unauthenticated : AuthFailure (wrong pwd, not found)
    signingIn --> suspended_block : profile.isSuspended==true<br/>(via AuthService check)
    signingIn --> authenticated : success + lastLoginAt updated
    
    suspended_block --> unauthenticated : Show 'Compte suspendu' + reason<br/>session NOT created
    
    authenticated --> onboarding : isOnboarded==false<br/>(redirect /onboarding)
    onboarding --> authenticated : profile updated with isOnboarded=true
    
    authenticated --> authenticated : updateProfile<br/>(name, avatar, genres, stats deltas...)
    
    authenticated --> unauthenticated : signOut()<br/>session.activeEmail = null
    
    authenticated --> [*] : deleteAccount()<br/>row deleted + session cleared
    
    note right of registering
      Auto-promote role='owner'
      si email ∈ kOwnerEmails
    end note
    
    note right of authenticated
      AuthAuthenticated state
      Tab Admin visible si role.isAdmin
    end note
    
    note right of suspended_block
      Admin doit reinstateUser
      via /admin/users
    end note
```

## 4. Cycle de vie d'un événement (admin)

```mermaid
stateDiagram-v2
    [*] --> draft : createEvent(isPublished=false)<br/>(via form admin)
    [*] --> published : createEvent(isPublished=true)<br/>(défaut du form)
    
    draft --> published : toggleEventPublished()<br/>devient visible /home /explore
    published --> draft : toggleEventPublished()<br/>invisible des users
    
    published --> published : updateEvent()<br/>modif champs (prix, image, lieu...)
    draft --> draft : updateEvent()
    
    published --> deleted : deleteEvent() owner only
    draft --> deleted : deleteEvent() owner only
    
    deleted --> [*]
    
    note right of draft
      isPublished=false
      Visible /admin/events seulement
      Pas dans getEventsBySection / getAllEvents
    end note
    
    note right of published
      isPublished=true
      Visible côté user (home, explore, map)
      Achetable
    end note
    
    note right of deleted
      Row supprimée
      Tickets existants restent valides
      audit log 'event.delete'
    end note
```

## 5. Cycle de vie d'un code promo

```mermaid
stateDiagram-v2
    [*] --> active : savePromo() création<br/>isActive=true par défaut
    
    active --> inactive : togglePromo()
    inactive --> active : togglePromo()
    
    active --> expired : Date courante > expiresAt<br/>(filtré côté availablePromosProvider)
    active --> max_used : usedCount ≥ maxUses<br/>(filtré côté availablePromosProvider)
    
    active --> active : savePromo() update champs<br/>(discountValue, minSubtotal, etc.)
    
    active --> deleted : deletePromo() owner only
    inactive --> deleted : deletePromo() owner only
    expired --> deleted : deletePromo()
    
    deleted --> [*]
    
    note right of active
      isActive=true
      + non expiré
      + usedCount < maxUses (ou maxUses=0)
      → apparait dans availablePromosProvider
      → applicable au panier
    end note
    
    note right of inactive
      isActive=false
      Visible /admin/promos
      Pas applicable côté user
    end note
    
    note right of expired
      isActive=true mais expiresAt < NOW
      Filtré dynamiquement,
      reste en BDD
    end note
```

## 6. Cycle de vie d'une session

```mermaid
stateDiagram-v2
    [*] --> empty : Première install<br/>row absente OR<br/>activeEmail = null
    
    empty --> active : _setSession(email)<br/>après register/signIn réussi
    
    active --> active : Multi-comptes<br/>signOut + signIn(autre email)<br/>= reset puis nouveau set
    
    active --> empty : signOut()<br/>activeEmail = null<br/>loggedInAt = null
    
    active --> empty : deleteAccount()<br/>row du profil supprimée<br/>+ session cleared
    
    note right of active
      Singleton key='session'
      activeEmail = email courant
      Utilisé par CartRepository,
      TicketRepository, etc.
      pour scoper les data
    end note
```

## 7. Audit log — table append-only

```mermaid
stateDiagram-v2
    [*] --> recorded : Toute mutation admin<br/>déclenche _audit()
    
    recorded --> [*]
    
    note right of recorded
      Append-only par convention
      Aucune méthode dans AdminRepository
      ne UPDATE ni DELETE des rows
      isar_admin_actions
      
      Tom peut écrire un cron de
      purge si besoin (ex : > 1 an)
      mais pas exposé en UI
    end note
```
