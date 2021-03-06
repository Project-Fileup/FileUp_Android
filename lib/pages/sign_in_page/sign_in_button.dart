import 'dart:convert';

import 'package:file_up/model/server.dart';
import 'package:file_up/pages/sign_in_page/text_form_widget.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crypto/crypto.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SignButton(
        '로그인',
        color: Colors.white,
        onPressed: () => signIn(context),
      ),
    );
  }

  void signIn(BuildContext context) async {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      Digest sha512Pasword = sha512.convert(utf8.encode(password));

      circularProgress(context);

      var result = await postSignIn(email, sha512Pasword.toString());

      Get.back();

      int statusCode = result['status'];
      if (statusCode == 200) {
        print("로그인 성공");
      } else {
        showDialog(
          context: context,
          builder: (context) => errorDialog(result['message']),
        );
      }
    }
  }

  void circularProgress(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
  }

  Widget errorDialog(String message) {
    return AlertDialog(
      title: Text('로그인 오류'),
      content: Text(message),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      actions: [
        dialogButton('확인'),
      ],
    );
  }

  Widget dialogButton(String text) {
    return MaterialButton(
      onPressed: () => Get.back(),
      child: Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
