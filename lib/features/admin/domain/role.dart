/// Pulsar RBAC — 3 niveaux :
/// - `owner` : Tom & co-fondateurs, accès total (incl. réglages globaux,
///   suppression d'événements, gestion des rôles).
/// - `collaborator` : staff étendu, CRUD partiel (édition événements,
///   visualisation commandes, codes promo) sans accès aux comptes ni
///   aux réglages destructifs.
/// - `user` : utilisateur final.
enum UserRole {
  user('user'),
  collaborator('collaborator'),
  owner('owner');

  final String wire;
  const UserRole(this.wire);

  static UserRole fromWire(String? wire) {
    switch (wire) {
      case 'owner':
        return UserRole.owner;
      case 'collaborator':
        return UserRole.collaborator;
      case 'user':
      default:
        return UserRole.user;
    }
  }

  bool get isAdmin => this == owner || this == collaborator;
  bool get isOwner => this == owner;
  bool get isCollaborator => this == collaborator;
  bool get isUser => this == user;

  /// CRUD capabilities
  bool get canCreateEvent => isAdmin;
  bool get canUpdateEvent => isAdmin;
  bool get canDeleteEvent => isOwner;
  bool get canPublishEvent => isAdmin;

  bool get canManageUsers => isOwner;
  bool get canChangeRoles => isOwner;
  bool get canSuspendUsers => isOwner;

  bool get canViewOrders => isAdmin;
  bool get canRefundOrders => isOwner;

  bool get canManagePromos => isAdmin;
  bool get canDeletePromos => isOwner;

  bool get canEditAppSettings => isOwner;
  bool get canViewAuditLog => isOwner;

  bool get canSendBroadcast => isAdmin;

  String get label {
    switch (this) {
      case UserRole.owner:
        return 'Propriétaire';
      case UserRole.collaborator:
        return 'Collaborateur';
      case UserRole.user:
        return 'Utilisateur';
    }
  }

  String get emoji {
    switch (this) {
      case UserRole.owner:
        return '👑';
      case UserRole.collaborator:
        return '🛠️';
      case UserRole.user:
        return '👤';
    }
  }
}

/// Emails auto-promus en owner au premier login. Tu peux ajouter d'autres
/// adresses ici (cofondateurs). Tout le reste démarre en `user`.
const kOwnerEmails = <String>{
  'tom.farge@outlook.fr',
};
