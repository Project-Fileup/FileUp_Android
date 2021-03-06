import 'dart:convert';

import 'package:file_up/model/server.dart';
import 'package:file_up/pages/sign_up_page/base_container.dart';
import 'package:file_up/pages/sign_up_page/email_nickName_widget.dart';
import 'package:file_up/pages/sign_up_page/vertify_widget.dart';
import 'package:file_up/widgets/info_textField.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:get/get.dart';

final formKey = GlobalKey<FormState>();
String password;
String rePassword;
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();

class PasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: BaseContainer(
        children: [
          InfoTextField(
            '비밀번호',
            textEditingController: passwordController,
            validator: (value) {
              if (value.isEmpty) {
                return '비밀번호 입력해주세요.';
              } else if (!(10 <= value.length && value.length <= 25)) {
                return '비밀번호는 10 ~ 25 자리 내로 입력해주세요.';
              } else {
                return null;
              }
            },
            onSaved: (newValue) => password = newValue,
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          InfoTextField(
            '비밀번호 확인',
            textEditingController: rePasswordController,
            validator: (value) {
              if (value.isEmpty) {
                return '비밀번호 입력해주세요.';
              } else if (passwordController.text != value) {
                return '비밀번호가 일치하지 않습니다.';
              } else {
                return null;
              }
            },
            onSaved: (newValue) => rePassword = newValue,
            obscureText: true,
          ),
          Expanded(child: Container()),
          SignButton(
            '완료',
            onPressed: () => _onPressed(context),
          ),
        ],
      ),
    );
  }

  _onPressed(context) async {
    if (_textFieldValidate()) {
      Digest sha512Password = sha512.convert(utf8.encode(password));

      var result = await _signUP(context, sha512Password.toString());

      if (result['status'] == 200) {
        Get.back();
      } else {
        showDialog(
          context: context,
          builder: (context) => _errorDialog(result['message']),
        );
      }
    }
  }

  _signUP(context, sha512Password) async {
    _circularProgress(context);
    print(vertify);
    var result = await postSignUp(email, sha512Password, vertify, nickName);

    Get.back();

    return result;
  }

  _textFieldValidate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      return true;
    } else {
      return false;
    }
  }

  void _circularProgress(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
  }

  Widget _errorDialog(String message) {
    return AlertDialog(
      title: Text('이메일 오류'),
      content: Text(message),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      actions: [
        _dialogButton('확인'),
      ],
    );
  }

  Widget _dialogButton(String text) {
    return MaterialButton(
      onPressed: () => Get.back(),
      child: Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
