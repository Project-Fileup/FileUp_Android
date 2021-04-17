import 'package:file_up/model/server.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SignButton(
        '로그인',
        color: Colors.white,
        onPressed: () {
          signIn('gwon080870@gmail.com', 'asdfasdfasdf');
        },
      ),
    );
  }
}
