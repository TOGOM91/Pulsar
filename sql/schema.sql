-- =====================================================================
-- Pulsar — Schéma relationnel (MLD) — traduction académique du backend
-- Cloud Firestore. À utiliser si un schéma SQL classique est attendu.
-- Dialecte : SQL standard (compatible PostgreSQL / MySQL avec ajustements).
-- =====================================================================

CREATE TABLE Utilisateur (
    email                       VARCHAR(255) PRIMARY KEY,
    name                        VARCHAR(255) NOT NULL,
    avatarUrl                   TEXT,
    phone                       VARCHAR(40),
    bio                         TEXT,
    role                        VARCHAR(20)  NOT NULL DEFAULT 'user'
                                CHECK (role IN ('user','collaborator','owner')),
    isSuspended                 BOOLEAN      NOT NULL DEFAULT FALSE,
    suspendedReason             TEXT,
    suspendedAt                 TIMESTAMP,
    memberSince                 INTEGER,
    budgetMax                   DECIMAL(10,2) DEFAULT 300,
    locationName                VARCHAR(255),
    language                    VARCHAR(5)   DEFAULT 'fr',
    darkMode                    BOOLEAN      DEFAULT FALSE,
    notificationsEnabled        BOOLEAN      DEFAULT TRUE,
    emailNotificationsEnabled   BOOLEAN      DEFAULT TRUE,
    socialNotificationsEnabled  BOOLEAN      DEFAULT FALSE,
    ecoMode                     BOOLEAN      DEFAULT TRUE,
    showCarbonFootprint         BOOLEAN      DEFAULT TRUE,
    isOnboarded                 BOOLEAN      DEFAULT FALSE,
    eventsBooked                INTEGER      DEFAULT 0,
    co2SavedKg                  DECIMAL(10,2) DEFAULT 0,
    moneySavedEur               DECIMAL(10,2) DEFAULT 0,
    percentile                  INTEGER      DEFAULT 50,
    createdAt                   TIMESTAMP    NOT NULL,
    lastLoginAt                 TIMESTAMP
);

CREATE TABLE Evenement (
    eventId            VARCHAR(64) PRIMARY KEY,
    name               VARCHAR(255) NOT NULL,
    category           VARCHAR(64),
    duration           VARCHAR(64),
    imageUrl           TEXT,
    gradient           TEXT,
    eventDate          VARCHAR(128),          -- libellé ("19-21 juin 2026")
    location           VARCHAR(255),
    transport          VARCHAR(255),
    accommodation      VARCHAR(255),
    pricingLabel       VARCHAR(128),
    pricingAmount      DECIMAL(10,2) NOT NULL DEFAULT 0,
    pricingSavings     DECIMAL(10,2),
    pricingSavingsText VARCHAR(255),
    currency           VARCHAR(8) DEFAULT '€',
    section            VARCHAR(32) DEFAULT 'upcoming',
    sortOrder          INTEGER DEFAULT 0,
    isPublished        BOOLEAN DEFAULT TRUE,
    totalTicketsSold   INTEGER DEFAULT 0,
    totalRevenue       DECIMAL(12,2) DEFAULT 0,
    createdAt          TIMESTAMP,
    updatedAt          TIMESTAMP,
    updatedByEmail     VARCHAR(255) REFERENCES Utilisateur(email)
);

CREATE TABLE Genre (
    libelle VARCHAR(64) PRIMARY KEY
);

CREATE TABLE Evenement_Genre (
    eventId VARCHAR(64) REFERENCES Evenement(eventId) ON DELETE CASCADE,
    libelle VARCHAR(64) REFERENCES Genre(libelle),
    PRIMARY KEY (eventId, libelle)
);

CREATE TABLE Badge (
    badgeId  VARCHAR(64) PRIMARY KEY,
    eventId  VARCHAR(64) NOT NULL REFERENCES Evenement(eventId) ON DELETE CASCADE,
    type     VARCHAR(32),
    texte    VARCHAR(128),
    ordre    INTEGER DEFAULT 0
);

CREATE TABLE CodePromo (
    code           VARCHAR(64) PRIMARY KEY,
    label          VARCHAR(255),
    emoji          VARCHAR(16),
    discountType   VARCHAR(16) CHECK (discountType IN ('percent','fixed')),
    discountValue  DECIMAL(10,2) NOT NULL,
    minSubtotal    DECIMAL(10,2) DEFAULT 0,
    expiresAt      TIMESTAMP,
    maxUses        INTEGER DEFAULT 0,
    usedCount      INTEGER DEFAULT 0,
    isActive       BOOLEAN DEFAULT TRUE,
    createdAt      TIMESTAMP NOT NULL,
    createdByEmail VARCHAR(255) REFERENCES Utilisateur(email)
);

CREATE TABLE Commande (
    orderId         VARCHAR(64) PRIMARY KEY,
    customerEmail   VARCHAR(255) NOT NULL REFERENCES Utilisateur(email),
    promoCode       VARCHAR(64) REFERENCES CodePromo(code),
    placedAt        TIMESTAMP NOT NULL,
    subtotal        DECIMAL(10,2) NOT NULL,
    discount        DECIMAL(10,2) DEFAULT 0,
    serviceFee      DECIMAL(10,2) DEFAULT 0,
    tax             DECIMAL(10,2) DEFAULT 0,
    total           DECIMAL(10,2) NOT NULL,
    currency        VARCHAR(8) DEFAULT '€',
    paymentMethod   VARCHAR(64),
    paymentBrand    VARCHAR(32),
    paymentLast4    VARCHAR(4),
    status          VARCHAR(20) DEFAULT 'pending'
                    CHECK (status IN ('pending','paid','failed','refunded','partial_refund')),
    itemCount       INTEGER DEFAULT 0,
    failureReason   TEXT,
    refundReason    TEXT,
    refundedAt      TIMESTAMP,
    refundAmount    DECIMAL(10,2),
    refundedByEmail VARCHAR(255) REFERENCES Utilisateur(email)
);

CREATE TABLE Billet (
    ticketId                  VARCHAR(64) PRIMARY KEY,
    eventId                   VARCHAR(64) NOT NULL REFERENCES Evenement(eventId),
    ownerEmail                VARCHAR(255) NOT NULL REFERENCES Utilisateur(email),
    orderId                   VARCHAR(64) REFERENCES Commande(orderId),
    price                     DECIMAL(10,2) NOT NULL,
    ticketType                VARCHAR(32) DEFAULT 'standard',
    status                    VARCHAR(20) DEFAULT 'confirmed'
                              CHECK (status IN ('confirmed','used','cancelled','transferred')),
    purchaseDate              TIMESTAMP NOT NULL,
    qrCodeData                TEXT,
    seatInfo                  VARCHAR(128),
    chosenTransportLabel      VARCHAR(255),
    chosenTransportCo2SavedKg DECIMAL(10,2),
    transferredToEmail        VARCHAR(255),
    transferredAt             TIMESTAMP,
    cancelledAt               TIMESTAMP,
    refundAmount              DECIMAL(10,2),
    eventDateParsed           TIMESTAMP
);

CREATE TABLE ArticlePanier (
    ownerEmail         VARCHAR(255) REFERENCES Utilisateur(email) ON DELETE CASCADE,
    eventId            VARCHAR(64)  REFERENCES Evenement(eventId),
    unitPrice          DECIMAL(10,2) NOT NULL,
    quantity           INTEGER NOT NULL DEFAULT 1,
    ticketType         VARCHAR(32) DEFAULT 'standard',
    transportOption    VARCHAR(255),
    transportPrice     DECIMAL(10,2),
    accommodationOption VARCHAR(255),
    accommodationPrice DECIMAL(10,2),
    PRIMARY KEY (ownerEmail, eventId)
);

CREATE TABLE Favori (
    userEmail VARCHAR(255) REFERENCES Utilisateur(email) ON DELETE CASCADE,
    eventId   VARCHAR(64)  REFERENCES Evenement(eventId),
    addedAt   TIMESTAMP NOT NULL,
    PRIMARY KEY (userEmail, eventId)
);

CREATE TABLE MoyenPaiement (
    methodId   VARCHAR(64) PRIMARY KEY,
    ownerEmail VARCHAR(255) NOT NULL REFERENCES Utilisateur(email) ON DELETE CASCADE,
    brand      VARCHAR(32),
    last4      VARCHAR(4),
    holder     VARCHAR(255),
    expiry     VARCHAR(7),
    isDefault  BOOLEAN DEFAULT FALSE,
    createdAt  TIMESTAMP NOT NULL
);

CREATE TABLE ActionAdmin (
    id         VARCHAR(64) PRIMARY KEY,
    actorEmail VARCHAR(255) NOT NULL REFERENCES Utilisateur(email),
    actorRole  VARCHAR(20),
    action     VARCHAR(64),
    entityType VARCHAR(32),
    entityId   VARCHAR(64),
    at         TIMESTAMP NOT NULL,
    details    TEXT          -- JSON sérialisé
);

CREATE TABLE Diffusion (
    broadcastId VARCHAR(64) PRIMARY KEY,
    sentByEmail VARCHAR(255) NOT NULL REFERENCES Utilisateur(email),
    title       VARCHAR(255),
    body        TEXT,
    category    VARCHAR(32) DEFAULT 'system',
    actionRoute VARCHAR(255),
    audience    VARCHAR(32) DEFAULT 'all',
    sentAt      TIMESTAMP NOT NULL
);

CREATE TABLE ParametresApp (
    id                  VARCHAR(16) PRIMARY KEY DEFAULT 'app',
    taxRate             DECIMAL(5,4) DEFAULT 0.20,
    serviceFeeRate      DECIMAL(5,4) DEFAULT 0.05,
    supportEmail        VARCHAR(255) DEFAULT 'support@pulsar.app',
    maintenanceMode     BOOLEAN DEFAULT FALSE,
    maintenanceMessage  TEXT,
    maxTicketsPerOrder  INTEGER DEFAULT 10,
    currencyCode        VARCHAR(8) DEFAULT 'EUR',
    currencySymbol      VARCHAR(8) DEFAULT '€',
    stripePublishableKey TEXT,
    paymentSimulation   BOOLEAN DEFAULT TRUE,
    updatedAt           TIMESTAMP NOT NULL,
    updatedByEmail      VARCHAR(255) REFERENCES Utilisateur(email)
);

CREATE TABLE ParametresFeatured (
    id      VARCHAR(16) REFERENCES ParametresApp(id) ON DELETE CASCADE,
    eventId VARCHAR(64) REFERENCES Evenement(eventId),
    PRIMARY KEY (id, eventId)
);

-- Index utiles (équivalents des index composites Firestore)
CREATE INDEX idx_billet_owner_date   ON Billet(ownerEmail, purchaseDate DESC);
CREATE INDEX idx_commande_cust_date  ON Commande(customerEmail, placedAt DESC);
CREATE INDEX idx_commande_statut     ON Commande(status, placedAt DESC);
CREATE INDEX idx_event_section_pub   ON Evenement(section, isPublished, sortOrder);
