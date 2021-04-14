import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';

class SignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignButton(
            '로그인',
            color: Colors.white,
          ),
          SignButton(
            '회원가입',
          ),
        ],
      ),
    );
  }
}
