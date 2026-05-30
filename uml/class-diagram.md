# Pulsar — Diagrammes de classes

Découpés par sous-système pour rester lisibles.

## 1. Modèles de domaine (Freezed)

```mermaid
classDiagram
    class EventModel {
        +String id
        +String name
        +String category
        +String duration
        +String imageUrl
        +String gradient
        +List~EventBadge~ badges
        +EventDetails details
        +EventPricing pricing
        +List~String~ genres
        +bool isFavorite
        +int delayAnimation
        +copyWith() EventModel
    }

    class EventBadge {
        +String type
        +String text
    }

    class EventDetails {
        +String date
        +String location
        +String transport
        +String? accommodation
    }

    class EventPricing {
        +String label
        +double amount
        +double? savings
        +String? savingsText
        +String currency
    }

    class CartItem {
        +String eventId
        +String eventName
        +String eventDate
        +String eventLocation
        +String? eventImageUrl
        +double unitPrice
        +int quantity
        +String ticketType
        +String? transportOption
        +double? transportPrice
        +String? accommodationOption
        +double? accommodationPrice
        +double totalPrice
    }

    class TicketModel {
        +String id
        +String eventId
        +String eventName
        +String eventDate
        +String eventLocation
        +String? eventImageUrl
        +double price
        +String ticketType
        +TicketStatus status
        +DateTime purchaseDate
        +String? qrCodeData
        +String? seatInfo
        +String? transferredToEmail
        +DateTime? cancelledAt
        +double? refundAmount
        +DateTime? eventDateParsed
    }

    class UserModel {
        +String id
        +String name
        +String email
        +String? avatarUrl
        +int memberSince
        +UserPreferences preferences
        +UserStats stats
    }

    class UserPreferences {
        +List~String~ genres
        +double budgetMax
        +String location
        +String language
        +bool darkMode
    }

    class UserStats {
        +int eventsBooked
        +double co2SavedKg
        +double moneySavedEur
        +int percentile
    }

    class PromoCode {
        +String code
        +String label
        +double? percentOff
        +double? amountOff
        +double minSubtotal
        +String emoji
        +discountFor(double subtotal) double
    }

    class CheckoutBreakdown {
        +double subtotal
        +double discount
        +double serviceFee
        +double tax
        +double total
        +PromoCode? appliedPromo
        +from(subtotal, promo, taxRate, serviceFeeRate)$
    }

    class AppNotification {
        +String id
        +NotificationCategory category
        +String title
        +String body
        +DateTime time
        +bool isRead
        +String? actionRoute
        +String? imageUrl
        +copyWith() AppNotification
    }

    class TicketStatus {
        <<enumeration>>
        confirmed
        cancelled
        transferred
        used
        expired
    }

    class NotificationCategory {
        <<enumeration>>
        event
        transport
        eco
        social
        system
    }

    EventModel "1" *-- "*" EventBadge
    EventModel "1" *-- "1" EventDetails
    EventModel "1" *-- "1" EventPricing
    UserModel "1" *-- "1" UserPreferences
    UserModel "1" *-- "1" UserStats
    TicketModel ..> TicketStatus
    AppNotification ..> NotificationCategory
    CheckoutBreakdown "1" o-- "0..1" PromoCode
```

## 2. Couche données (Repositories + Drift)

```mermaid
classDiagram
    class AppDatabase {
        +isarEvents
        +isarTickets
        +isarCartItems
        +isarUserProfiles
        +isarAuthSessions
        +isarFavorites
        +isarOrders
        +isarAppSettingsTable
        +isarPromoCodes
        +isarPaymentMethods
        +isarAdminActions
        +isarBroadcastNotifications
        +schemaVersion int
        +migration MigrationStrategy
    }

    class EventRepository {
        -AppDatabase _db
        +getEventsBySection(section) Future~List~EventModel~~
        +getAllEvents() Future~List~EventModel~~
        +getEventById(eventId) Future~EventModel?~
        +searchEvents(query) Future~List~EventModel~~
        +filterByGenre(genre) Future~List~EventModel~~
        +getFavorites() Future~List~EventModel~~
        +toggleFavorite(eventId) Future~bool?~
        +isFavorite(eventId) Future~bool~
    }

    class CartRepository {
        -AppDatabase _db
        +getCartItems() Future~List~CartItem~~
        +addItem(CartItem) Future~void~
        +updateQuantity(eventId, qty) Future~void~
        +removeItem(eventId) Future~void~
        +clearCart() Future~void~
        +itemCount Future~int~
    }

    class TicketRepository {
        -AppDatabase _db
        +getAllTickets() Future~List~TicketModel~~
        +createTicket(...) Future~TicketModel~
        +cancelTicket(ticketId) Future~void~
        +transferTicket(ticketId, email) Future~void~
    }

    class OrderRepository {
        -AppDatabase _db
        +createPending(...) Future~IsarOrder~
        +markPaid(orderId, ticketIds) Future~IsarOrder~
        +markFailed(orderId, reason) Future~IsarOrder~
        +ordersForCustomer(email) Future~List~IsarOrder~~
    }

    class AdminRepository {
        -AppDatabase _db
        +computeStats() Future~DashboardStats~
        +listEvents() Future~List~IsarEvent~~
        +createEvent(actor, input) Future~IsarEvent~
        +updateEvent(actor, id, input) Future~IsarEvent?~
        +deleteEvent(actor, id) Future~void~
        +toggleEventPublished(actor, id) Future~void~
        +listUsers() Future~List~IsarUserProfile~~
        +changeRole(actor, email, role) Future~IsarUserProfile?~
        +suspendUser(actor, email, reason) Future~IsarUserProfile?~
        +reinstateUser(actor, email) Future~IsarUserProfile?~
        +listOrders(status?) Future~List~IsarOrder~~
        +refundOrder(actor, id, reason, partial?) Future~IsarOrder?~
        +listPromos() Future~List~IsarPromoCode~~
        +savePromo(actor, input) Future~IsarPromoCode~
        +deletePromo(actor, code) Future~void~
        +togglePromo(actor, code) Future~IsarPromoCode?~
        +getOrInitSettings() Future~IsarAppSettings~
        +updateSettings(...) Future~IsarAppSettings~
        +sendBroadcast(actor, ...) Future~IsarBroadcastNotification~
        +auditLog(limit) Future~List~IsarAdminAction~~
    }

    EventRepository --> AppDatabase
    CartRepository --> AppDatabase
    TicketRepository --> AppDatabase
    OrderRepository --> AppDatabase
    AdminRepository --> AppDatabase

    EventRepository ..> EventModel
    CartRepository ..> CartItem
    TicketRepository ..> TicketModel
```

## 3. Authentification (services + état)

```mermaid
classDiagram
    class AuthService {
        -AppDatabase _db
        +currentUser() Future~IsarUserProfile?~
        +register(name, email, password) Future~AuthResult~
        +signIn(email, password) Future~AuthResult~
        +signOut() Future~void~
        +updateProfile(...) Future~IsarUserProfile?~
        +deleteAccount() Future~void~
        +allAccounts() Future~List~IsarUserProfile~~
        +hashPassword(p)$ String
        +verifyPassword(p, hash)$ bool
    }

    class FirebaseAuthService {
        -FirebaseAuth _firebase
        -AppDatabase _db
        -AuthService _local
        +currentUser() Future~IsarUserProfile?~
        +register(name, email, password) Future~AuthResult~
        +signIn(email, password) Future~AuthResult~
        +signOut() Future~void~
        +sendPasswordResetEmail(email) Future~String?~
        +updateProfile(...) Future~IsarUserProfile?~
        +deleteAccount() Future~void~
    }

    class AuthResult {
        <<sealed>>
    }
    class AuthSuccess {
        +IsarUserProfile profile
    }
    class AuthFailure {
        +String message
    }

    class AuthState {
        <<sealed>>
    }
    class AuthLoading
    class AuthUnauthenticated
    class AuthAuthenticated {
        +IsarUserProfile profile
    }

    class AuthNotifier {
        <<AsyncNotifier~AuthState~>>
        -AuthService _local
        -FirebaseAuthService? _firebase
        -bool _useFirebase
        +build() Future~AuthState~
        +register(...) Future~String?~
        +signIn(...) Future~String?~
        +signOut() Future~void~
        +updateProfile(...) Future~void~
        +refresh() Future~void~
    }

    FirebaseAuthService --> AuthService : delegate local
    AuthSuccess --|> AuthResult
    AuthFailure --|> AuthResult
    AuthLoading --|> AuthState
    AuthUnauthenticated --|> AuthState
    AuthAuthenticated --|> AuthState

    AuthNotifier --> AuthService
    AuthNotifier --> FirebaseAuthService
    AuthService ..> AuthResult
    FirebaseAuthService ..> AuthResult
```

## 4. RBAC (rôles & capabilities)

```mermaid
classDiagram
    class UserRole {
        <<enumeration>>
        user
        collaborator
        owner
        +String wire
        +String label
        +String emoji
        +bool isAdmin
        +bool isOwner
        +bool isCollaborator
        +bool isUser
        +bool canCreateEvent
        +bool canUpdateEvent
        +bool canDeleteEvent
        +bool canPublishEvent
        +bool canManageUsers
        +bool canChangeRoles
        +bool canSuspendUsers
        +bool canViewOrders
        +bool canRefundOrders
        +bool canManagePromos
        +bool canDeletePromos
        +bool canEditAppSettings
        +bool canViewAuditLog
        +bool canSendBroadcast
        +fromWire(wire)$ UserRole
    }

    class kOwnerEmails {
        <<const Set~String~>>
        +"tom.farge@outlook.fr"
    }

    note for UserRole "owner       : true partout
collaborator: events (sans delete), promos (sans delete),
              orders (lecture), broadcasts
user        : aucune capability admin"
```

| Capability | user | collaborator | owner |
|---|:-:|:-:|:-:|
| `canCreateEvent` |   | ✅ | ✅ |
| `canUpdateEvent` |   | ✅ | ✅ |
| `canDeleteEvent` |   |   | ✅ |
| `canPublishEvent` |   | ✅ | ✅ |
| `canManageUsers` |   |   | ✅ |
| `canChangeRoles` |   |   | ✅ |
| `canSuspendUsers` |   |   | ✅ |
| `canViewOrders` |   | ✅ | ✅ |
| `canRefundOrders` |   |   | ✅ |
| `canManagePromos` |   | ✅ | ✅ |
| `canDeletePromos` |   |   | ✅ |
| `canEditAppSettings` |   |   | ✅ |
| `canViewAuditLog` |   |   | ✅ |
| `canSendBroadcast` |   | ✅ | ✅ |

## 5. Module Admin (UI + providers)

```mermaid
classDiagram
    class AdminDashboardScreen
    class AdminEventsScreen
    class AdminEventEditScreen {
        +String? eventId
    }
    class AdminUsersScreen
    class AdminOrdersScreen
    class AdminPromosScreen
    class AdminSettingsScreen
    class AdminNotificationsScreen
    class AdminAuditScreen

    class AdminRepository
    class DashboardStats {
        +int totalUsers
        +int totalEvents
        +int publishedEvents
        +int totalOrders
        +int paidOrders
        +int refundedOrders
        +int totalTickets
        +double revenue
        +double refundedAmount
        +double co2SavedKg
        +Map~UserRole,int~ byRole
        +int suspendedUsers
    }

    class AdminEventInput {
        +String eventId
        +String name
        +String category
        +String duration
        +String imageUrl
        +String gradient
        +String date
        +String location
        +String transport
        +String? accommodation
        +String pricingLabel
        +double pricingAmount
        +double? pricingSavings
        +String? pricingSavingsText
        +String currency
        +List~String~ genres
        +List~String~ badgeTypes
        +List~String~ badgeTexts
        +String section
        +int sortOrder
        +bool isPublished
        +fromEvent(IsarEvent)$ AdminEventInput
    }

    class PromoInput {
        +String code
        +String label
        +String emoji
        +String discountType
        +double discountValue
        +double minSubtotal
        +int maxUses
        +fromPromo(IsarPromoCode)$ PromoInput
    }

    AdminDashboardScreen --> AdminRepository : reads stats
    AdminEventsScreen --> AdminRepository : list/toggle/delete
    AdminEventEditScreen --> AdminRepository : create/update
    AdminUsersScreen --> AdminRepository : role/suspend
    AdminOrdersScreen --> AdminRepository : refund
    AdminPromosScreen --> AdminRepository : CRUD
    AdminSettingsScreen --> AdminRepository : updateSettings
    AdminNotificationsScreen --> AdminRepository : sendBroadcast
    AdminAuditScreen --> AdminRepository : auditLog

    AdminRepository ..> DashboardStats
    AdminRepository ..> AdminEventInput
    AdminRepository ..> PromoInput
```

## 6. Checkout (services + flow)

```mermaid
classDiagram
    class CartNotifier {
        <<StateNotifier~AsyncValue~List~CartItem~~~~>>
        +addItem(item) Future~void~
        +removeItem(id) Future~void~
        +updateQuantity(id, qty) Future~void~
        +clearCart() Future~void~
    }

    class CartRepository
    class OrderRepository
    class TicketRepository
    class PaymentService {
        -IsarAppSettings _settings
        +charge(amount, email, methodId) Future~PaymentResult~
    }
    class PaymentResult {
        +bool success
        +String? transactionId
        +String? failureReason
    }

    class CheckoutBreakdown
    class PromoCode
    class PaymentMethod {
        +String id
        +PaymentBrand brand
        +String last4
        +String holder
        +String expiry
        +bool isDefault
    }
    class PaymentBrand {
        <<enumeration>>
        visa
        mastercard
        amex
        applepay
        googlepay
        paypal
    }

    CartNotifier --> CartRepository
    PaymentService ..> PaymentResult
    CheckoutBreakdown ..> PromoCode
    PaymentMethod ..> PaymentBrand
```
