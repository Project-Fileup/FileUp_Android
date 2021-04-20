import 'dart:math';

import 'package:file_up/model/server.dart';
import 'package:file_up/pages/sign_in_page/text_form_widget.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

      circularProgress(context);

      var result = await postSignIn(email, password);

      Get.back();

      int statusCode = result['status'];
      if (statusCode == 200) {
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
