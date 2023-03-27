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
      this.onPasswordVisibilityToggle})
      : super(key: key);

  final TextEditingController? controller;
  final String? hint;
  final void Function(String?)? onChanged;
  final bool? isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? showPassword;
  final void Function()? onPasswordVisibilityToggle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: isPassword ?? false ? passwordHintText : hint,
          prefixIcon: Icon(isPassword ?? false ? Icons.password : prefixIcon),
          suffixIcon: IconButton(
            icon: Icon(isPassword ?? false
                ? showPassword ?? false
                    ? Icons.visibility
                    : Icons.visibility_off
                : suffixIcon),
            onPressed: onPasswordVisibilityToggle,
          )),
    );
  }
}
