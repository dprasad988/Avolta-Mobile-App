import 'package:flutter/material.dart';

class UserRoleProvider with ChangeNotifier {
  String? _role;

  String? get role => _role;

  // Method to update the user role
  void setRole(String newRole) {
    _role = newRole;
    notifyListeners(); // Notifies all listeners of role change
  }
}
