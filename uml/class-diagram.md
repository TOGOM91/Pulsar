# Diagramme de classes (Pulsar)

Découpé par sous-système. Modèles = `lib/core/database/models.dart` ;
services = couche `data/` ; énumérations = domaine métier.

## 1. Modèles de domaine

```mermaid
classDiagram
    class Utilisateur {
        +String email
        +String name
        +UserRole role
        +bool isSuspended
        +int eventsBooked
        +double co2SavedKg
        +double moneySavedEur
        +int percentile
        +bool isOnboarded
    }
    class Evenement {
        +String eventId
        +String name
        +String category
        +double pricingAmount
        +String section
        +bool isPublished
        +List~String~ genres
        +int totalTicketsSold
        +double totalRevenue
    }
    class Billet {
        +String ticketId
        +String eventId
        +String ownerEmail
        +String orderId
        +double price
        +TicketStatus status
        +String qrCodeData
    }
    class Commande {
        +String orderId
        +String customerEmail
        +double total
        +OrderStatus status
        +List~String~ ticketIds
    }
    class CodePromo {
        +String code
        +DiscountType discountType
        +double discountValue
        +double minSubtotal
        +bool isActive
        +double discountFor(double subtotal)
    }
    class MoyenPaiement {
        +String methodId
        +PaymentBrand brand
        +String last4
        +bool isDefault
    }
    class ParametresApp {
        +double taxRate
        +double serviceFeeRate
        +bool maintenanceMode
        +int maxTicketsPerOrder
        +bool paymentSimulation
    }

    Utilisateur "1" --> "0..*" Commande
    Utilisateur "1" --> "0..*" Billet
    Utilisateur "1" --> "0..*" MoyenPaiement
    Commande "1" --> "0..*" Billet
    Commande "0..*" --> "0..1" CodePromo
    Billet "0..*" --> "1" Evenement

    class UserRole {
        <<enum>>
        user
        collaborator
        owner
    }
    class TicketStatus {
        <<enum>>
        confirmed
        used
        cancelled
        transferred
    }
    class OrderStatus {
        <<enum>>
        pending
        paid
        failed
        refunded
        partial_refund
    }
    class DiscountType {
        <<enum>>
        percent
        fixed
    }
    class PaymentBrand {
        <<enum>>
        visa
        mastercard
        amex
        applepay
        googlepay
        paypal
    }
```

## 2. Couche data (services / repositories)

```mermaid
classDiagram
    class FirestoreService {
        +CollectionReference events
        +CollectionReference users
        +CollectionReference orders
        +CollectionReference tickets
        +cartFor(email)
        +favoritesFor(email)
    }
    class AuthService {
        +currentUser() Utilisateur
        +register(name, email, pwd)
        +signIn(email, pwd)
        +updateProfile(...)
        +deleteAccount()
    }
    class EventRepository {
        +getEventsBySection(section)
        +getAllEvents()
        +getEventById(id)
        +searchEvents(query)
        +toggleFavorite(eventId)
    }
    class CartRepository {
        +getCartItems()
        +addItem(item)
        +updateQuantity(id, qty)
        +clearCart()
    }
    class OrderRepository {
        +createPending(...)
        +markPaid(orderId, ticketIds)
        +markFailed(orderId, reason)
    }
    class TicketRepository {
        +getAllTickets()
        +createTicket(...)
        +cancelTicket(id)
        +transferTicket(id, email)
    }
    class PaymentService {
        +charge(amount, email, methodId) PaymentResult
    }
    class AdminRepository {
        +computeStats() DashboardStats
        +createEvent / updateEvent / deleteEvent
        +changeRole / suspendUser / reinstateUser
        +refundOrder(...)
        +savePromo / deletePromo / togglePromo
        +updateSettings(...)
        +sendBroadcast(...)
        +auditLog(limit)
    }

    AuthService --> FirestoreService
    EventRepository --> FirestoreService
    CartRepository --> FirestoreService
    OrderRepository --> FirestoreService
    TicketRepository --> FirestoreService
    AdminRepository --> FirestoreService
    PaymentService --> ParametresApp
```
