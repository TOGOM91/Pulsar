# Diagramme de cas d'utilisation (Pulsar)

Acteurs et héritage : `Propriétaire ⊳ Collaborateur ⊳ Utilisateur`.
Le **Visiteur** (non connecté) est distinct. Systèmes externes : Firebase Auth, Stripe.

## Version PlantUML (rendu : https://www.plantuml.com/plantuml)

```plantuml
@startuml
left to right direction
skinparam packageStyle rectangle

actor Visiteur
actor Utilisateur
actor Collaborateur
actor Proprietaire
actor "Firebase Auth" as FB
actor Stripe

Utilisateur     --|> Visiteur
Collaborateur   --|> Utilisateur
Proprietaire    --|> Collaborateur

rectangle Pulsar {
  ' --- Visiteur ---
  usecase "Consulter événements publiés" as UC1
  usecase "S'inscrire" as UC2
  usecase "Se connecter" as UC3

  ' --- Utilisateur ---
  usecase "Gérer son profil" as UC4
  usecase "Rechercher / filtrer" as UC5
  usecase "Gérer favoris" as UC6
  usecase "Gérer le panier" as UC7
  usecase "Payer une commande" as UC8
  usecase "Consulter ses billets (QR)" as UC9
  usecase "Transférer / annuler un billet" as UC10
  usecase "Comparer le transport (CO2)" as UC11

  ' --- Collaborateur ---
  usecase "CRUD événements (hors suppression)" as UC12
  usecase "Publier un événement" as UC13
  usecase "Gérer codes promo (hors suppression)" as UC14
  usecase "Consulter les commandes" as UC15
  usecase "Envoyer une diffusion" as UC16

  ' --- Propriétaire ---
  usecase "Gérer rôles & suspensions" as UC17
  usecase "Rembourser une commande" as UC18
  usecase "Supprimer events / promos" as UC19
  usecase "Régler les paramètres globaux" as UC20
  usecase "Consulter le journal d'audit" as UC21
}

Visiteur --> UC1
Visiteur --> UC2
Visiteur --> UC3
Utilisateur --> UC4
Utilisateur --> UC5
Utilisateur --> UC6
Utilisateur --> UC7
Utilisateur --> UC8
Utilisateur --> UC9
Utilisateur --> UC10
Utilisateur --> UC11
Collaborateur --> UC12
Collaborateur --> UC13
Collaborateur --> UC14
Collaborateur --> UC15
Collaborateur --> UC16
Proprietaire --> UC17
Proprietaire --> UC18
Proprietaire --> UC19
Proprietaire --> UC20
Proprietaire --> UC21

UC2 ..> FB : <<include>>
UC3 ..> FB : <<include>>
UC8 ..> Stripe : <<include>>
@enduml
```

## Récapitulatif des droits (RBAC — `lib/features/admin/domain/role.dart`)

| Capacité | user | collaborator | owner |
|----------|:----:|:------------:|:-----:|
| Consulter / réserver | ✅ | ✅ | ✅ |
| Créer / éditer / publier événement | ❌ | ✅ | ✅ |
| Supprimer événement | ❌ | ❌ | ✅ |
| Gérer codes promo | ❌ | ✅ | ✅ |
| Supprimer code promo | ❌ | ❌ | ✅ |
| Voir commandes | ❌ | ✅ | ✅ |
| Rembourser | ❌ | ❌ | ✅ |
| Gérer utilisateurs (rôles/suspension) | ❌ | ❌ | ✅ |
| Paramètres globaux | ❌ | ❌ | ✅ |
| Journal d'audit | ❌ | ❌ | ✅ |
| Envoyer diffusion | ❌ | ✅ | ✅ |
