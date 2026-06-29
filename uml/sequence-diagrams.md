# Diagrammes de séquence (Pulsar)

Flux dynamiques clés. Acteurs techniques : écrans (presentation), services (data),
Firebase Auth, Cloud Firestore.

## 1. Inscription

```mermaid
sequenceDiagram
    actor U as Visiteur
    participant R as RegisterScreen
    participant A as AuthService
    participant FB as Firebase Auth
    participant FS as Firestore

    U->>R: saisit nom, email, mot de passe
    R->>A: register(name, email, pwd)
    A->>A: valide (email, pwd >= 6)
    A->>FB: createUserWithEmailAndPassword
    FB-->>A: UserCredential
    A->>FB: updateDisplayName(name)
    A->>FS: users/{email}.set(profil)  [role=user]
    FS-->>A: ok
    A-->>R: AuthSuccess(profil)
    R-->>U: redirige vers Onboarding
```

## 2. Connexion (avec contrôle de suspension)

```mermaid
sequenceDiagram
    actor U as Utilisateur
    participant L as LoginScreen
    participant A as AuthService
    participant FB as Firebase Auth
    participant FS as Firestore

    U->>L: email + mot de passe
    L->>A: signIn(email, pwd)
    A->>FB: signInWithEmailAndPassword
    FB-->>A: ok
    A->>FS: lit users/{email}
    FS-->>A: profil
    alt compte suspendu
        A->>FB: signOut()
        A-->>L: AuthFailure("Compte suspendu")
    else ok
        A->>FS: update lastLoginAt
        A-->>L: AuthSuccess(profil)
        L-->>U: redirige vers Home
    end
```

## 3. Paiement d'une commande (flux central)

```mermaid
sequenceDiagram
    actor U as Utilisateur
    participant C as CartScreen
    participant O as OrderRepository
    participant P as PaymentService
    participant T as TicketRepository
    participant Auth as AuthService
    participant FS as Firestore

    U->>C: appuie "Payer"
    C->>FS: lit app_settings/app (TVA, frais, maintenance, maxBillets)
    C->>O: createPending(montants, paiement)
    O->>FS: orders/{id}.set(status=pending)
    C->>P: charge(total, email, methode)
    alt paiement refusé / maintenance
        P-->>C: PaymentResult.failure(raison)
        C->>O: markFailed(id, raison)
        C-->>U: SnackBar erreur
    else paiement accepté
        P-->>C: PaymentResult.success(txId)
        loop pour chaque article du panier
            C->>T: createTicket(event, prix, orderId)
            T->>FS: tickets/{id}.set(status=confirmed)
        end
        C->>O: markPaid(id, ticketIds)
        C->>Auth: updateProfile(eventsBooked+, co2+, moneySaved+)
        C->>FS: vide le panier (batch delete)
        C-->>U: écran de confirmation + billets
    end
```

## 4. Remboursement par l'administrateur

```mermaid
sequenceDiagram
    actor O as Owner
    participant S as AdminOrdersScreen
    participant AR as AdminRepository
    participant FS as Firestore

    O->>S: ouvre commande payée, saisit motif (+ montant partiel ?)
    S->>AR: refundOrder(orderId, reason, partialAmount?)
    AR->>FS: lit orders/{id}
    alt status != paid
        AR-->>S: aucune action
    else
        AR->>FS: batch: order.status = refunded|partial_refund
        loop billets liés (confirmed)
            AR->>FS: ticket.status = cancelled (+ refundAmount)
        end
        AR->>FS: admin_actions.add(order.refund)  [audit]
        AR-->>S: commande mise à jour
    end
```
