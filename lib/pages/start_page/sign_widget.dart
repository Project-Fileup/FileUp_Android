import 'package:file_up/pages/sign_in_page/sign_in_page.dart';
import 'package:file_up/pages/sign_up_page/sign_up_page.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignButton(
          '로그인',
          color: Colors.white,
          onPressed: () {
            Get.to(() => SignInPage());
          },
        ),
        SizedBox(height: 20),
        SignButton(
          '회원가입',
          onPressed: () {
            Get.to(() => SignUpPage());
          },
        ),
      ],
    );
  }
}
