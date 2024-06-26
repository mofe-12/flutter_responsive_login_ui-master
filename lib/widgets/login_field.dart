import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final bool obscureText; // Add this parameter

  const LoginField({
    Key? key,
    required this.hintText,
    this.obscureText = false, // Default value set to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        obscureText: obscureText, // Use the parameter here
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText, // Add this line
        ),
      ),
    );
  }
}
