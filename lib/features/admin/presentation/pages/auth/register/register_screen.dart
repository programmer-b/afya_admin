import 'package:afya_admin/features/admin/presentation/manager/auth/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/strings.dart';
import '../../../widgets/text_form_widget.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final watcher = context.watch<RegisterProvider>();
    final reader = context.read<RegisterProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          registerTitleText,
          style: boldTextStyle(color: colorOnPrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(registerWelcomeMsg,
                      style: boldTextStyle(size: 32, color: primaryTextColor)),
                ),
                24.height,
                const TextFormWidget(
                  prefixIcon: LineIcons.phone,
                  hint: phoneHintText,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                ),
                12.height,
                const TextFormWidget(
                  prefixIcon: LineIcons.phone,
                  hint: confirmPhoneHintText,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                ),
                12.height,
                const TextFormWidget(
                  prefixIcon: LineIcons.user,
                  hint: usernameHintText,
                  textInputAction: TextInputAction.next,
                ),
                12.height,
                TextFormWidget(
                  isPassword: true,
                  showPassword: watcher.showPassword,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.visiblePassword,
                  onPasswordVisibilityToggle: () => reader.togglePasswordVisibility(),
                ),
                12.height,
                TextFormWidget(
                  isPassword: true,
                  confirmPassword: true,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                  showPassword: watcher.showConfirmPassword,
                  onPasswordVisibilityToggle: () => reader.toggleConfirmPasswordVisibility(),
                ),
                24.height,
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      registerButtonText,
                      style: primaryTextStyle(color: colorOnPrimary),
                    )).withSize(width: context.width(), height: 45),
                  18.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(registerScreenLoginMsg),
                      TextButton(
                        onPressed: () => const LoginScreen().launch(context, isNewTask: true),
                        child: const Text(loginTitleText),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
