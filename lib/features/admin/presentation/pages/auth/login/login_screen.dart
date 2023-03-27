import 'package:afya_admin/features/admin/presentation/widgets/text_form_widget.dart';
import 'package:afya_admin/utils/colors.dart';
import 'package:afya_admin/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
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
                prefixIcon: LineIcons.user,
                hint: usernameHintText,
              ),
              12.height,
              const TextFormWidget(
                isPassword: true,
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
                  )).withSize(width: context.width(), height: 45)
            ],
          ),
        ),
      ),
    );
  }
}
