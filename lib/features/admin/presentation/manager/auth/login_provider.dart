import 'package:flutter/foundation.dart';

class LoginProvider extends ChangeNotifier {
 bool _showPassword = false;
 bool get showPassword => _showPassword;

 togglePasswordVisibility(){
   _showPassword = !showPassword;
   notifyListeners();
 }
}