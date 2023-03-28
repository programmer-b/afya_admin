import 'package:afya_admin/utils/strings.dart';
import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {Key? key,
      this.controller,
      this.hint,
      this.onChanged,
      this.isPassword,
      this.prefixIcon,
      this.suffixIcon,
      this.showPassword,
      this.onPasswordVisibilityToggle,
      this.confirmPassword = false,
      this.keyboardType,
      this.textInputAction})
      : super(key: key);

  final TextEditingController? controller;
  final String? hint;
  final void Function(String?)? onChanged;
  final bool? isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? showPassword;
  final void Function()? onPasswordVisibilityToggle;
  final bool confirmPassword;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: isPassword ?? false ? !(showPassword ?? false) : false,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: isPassword ?? false
              ? confirmPassword
                  ? confirmPasswordHintText
                  : passwordHintText
              : hint,
          prefixIcon: Icon(isPassword ?? false ? Icons.password : prefixIcon),
          suffixIcon: IconButton(
            icon: Icon(isPassword ?? false
                ? showPassword ?? false
                    ? Icons.visibility_off
                    : Icons.visibility
                : suffixIcon),
            onPressed: onPasswordVisibilityToggle,
          )),
    );
  }
}
