import 'package:afya_admin/features/admin/presentation/manager/auth/login_provider.dart';
import 'package:afya_admin/features/admin/presentation/manager/auth/register_provider.dart';
import 'package:afya_admin/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'features/admin/presentation/pages/splash/splash_screen.dart';

const _target = 'patient';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => RegisterProvider())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: primaryColor,
              appBarTheme: AppBarTheme(
                  iconTheme: IconThemeData(color: colorOnPrimary),
                  systemOverlayStyle: const SystemUiOverlayStyle(
                      statusBarBrightness: Brightness.dark,
                      statusBarIconBrightness: Brightness.light))),
          home: const SplashScreen()),
    );
  }
}

bool isPatient = _target == 'patient';
bool isDoctor = _target == 'doctor';
bool isAdmin = _target == 'admin';
