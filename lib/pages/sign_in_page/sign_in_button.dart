import 'package:file_up/ui/sign_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SignButton('로그인'),
    );
  }
}
