import 'package:afya_admin/features/admin/presentation/manager/auth/login_provider.dart';
import 'package:afya_admin/features/admin/presentation/pages/auth/register/register_screen.dart';
import 'package:afya_admin/features/admin/presentation/widgets/text_form_widget.dart';
import 'package:afya_admin/utils/colors.dart';
import 'package:afya_admin/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../../../../../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final watcher = context.watch<LoginProvider>();
    final reader = context.read<LoginProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loginTitleText,
          style: boldTextStyle(color: colorOnPrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(loginWelcomeMsg,
                    style: boldTextStyle(size: 32, color: primaryTextColor)),
              ),
              24.height,
              const TextFormWidget(
                textInputAction: TextInputAction.next,
                prefixIcon: LineIcons.user,
                hint: usernameOrPhoneHintText,
              ),
              12.height,
              TextFormWidget(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                showPassword: watcher.showPassword,
                onPasswordVisibilityToggle: () => reader.togglePasswordVisibility(),
              ),
              12.height,
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(forgotPasswordButtonText),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(rememberMeText)
                  ],
                ),
              ),
              24.height,
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    loginButtonText,
                    style: primaryTextStyle(color: colorOnPrimary),
                  )).withSize(width: context.width(), height: 45),
              if(isPatient)
              18.height,
              if(isPatient)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(loginScreenRegisterMsg),
                  TextButton(
                    onPressed: () => const RegisterScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide),
                    child: const Text(registerTitleText),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
