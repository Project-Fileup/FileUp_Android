import 'package:file_up/widgets/info_textField.dart';
import 'package:flutter/material.dart';

String email;
String password;
final formKey = GlobalKey<FormState>();
bool visible;

class TextFromWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    visible = true;
    return Expanded(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoTextField(
              '이메일',
              validator: (value) {
                if (value.isEmpty) {
                  return '이메일을 입력해주세요';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) => email = newValue,
            ),
            SizedBox(
              height: 10,
            ),
            InfoTextField(
              '비밀번호',
              obscureText: visible,
              validator: (value) {
                if (value.isEmpty) {
                  return '비밀번호를 입력해주세요';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) => password = newValue,
            ),
          ],
        ),
      ),
    );
  }
}
