import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  bool _showPassword = false;
  bool get showPassword => _showPassword;

  bool _showConfirmPassword = false;
  bool get showConfirmPassword => _showConfirmPassword;

  togglePasswordVisibility() {
    _showPassword = !showPassword;
    notifyListeners();
  }

  toggleConfirmPasswordVisibility() {
    _showConfirmPassword = !showConfirmPassword;
    notifyListeners();
  }
}