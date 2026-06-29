import 'package:flutter_test/flutter_test.dart';
import 'package:flowee_app/features/admin/domain/role.dart';

void main() {
  group('UserRole.fromWire', () {
    test('maps known wire values', () {
      expect(UserRole.fromWire('owner'), UserRole.owner);
      expect(UserRole.fromWire('collaborator'), UserRole.collaborator);
      expect(UserRole.fromWire('user'), UserRole.user);
    });

    test('falls back to user for null/unknown', () {
      expect(UserRole.fromWire(null), UserRole.user);
      expect(UserRole.fromWire('garbage'), UserRole.user);
    });
  });

  group('RBAC capabilities', () {
    test('owner has full control', () {
      const r = UserRole.owner;
      expect(r.canDeleteEvent, isTrue);
      expect(r.canManageUsers, isTrue);
      expect(r.canRefundOrders, isTrue);
      expect(r.canEditAppSettings, isTrue);
      expect(r.canViewAuditLog, isTrue);
    });

    test('collaborator is restricted to non-destructive admin actions', () {
      const r = UserRole.collaborator;
      expect(r.isAdmin, isTrue);
      expect(r.canCreateEvent, isTrue);
      expect(r.canManagePromos, isTrue);
      // Reserved for owner:
      expect(r.canDeleteEvent, isFalse);
      expect(r.canManageUsers, isFalse);
      expect(r.canRefundOrders, isFalse);
      expect(r.canEditAppSettings, isFalse);
      expect(r.canViewAuditLog, isFalse);
    });

    test('regular user has no admin powers', () {
      const r = UserRole.user;
      expect(r.isAdmin, isFalse);
      expect(r.canCreateEvent, isFalse);
      expect(r.canViewOrders, isFalse);
    });
  });
}
