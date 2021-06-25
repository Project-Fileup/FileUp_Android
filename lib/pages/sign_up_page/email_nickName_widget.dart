import 'package:file_up/pages/sign_up_page/base_container.dart';
import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/pages/sign_up_page/vertify_widget.dart';
import 'package:file_up/widgets/info_textField.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:file_up/model/server.dart';
import 'package:get/get.dart';

final formKey = GlobalKey<FormState>();
String email;
String nickName;

class EmailNickNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: BaseContainer(
        children: [
          InfoTextField(
            '이메일',
            onSaved: (newValue) => email = newValue,
            validator: (value) {
              if (value.isEmpty) {
                return '이메일을 입력해주세요.';
              } else {
                return null;
              }
            },
            initText: email,
          ),
          SizedBox(
            height: 20,
          ),
          InfoTextField(
            '닉네임',
            onSaved: (newValue) => nickName = newValue,
            validator: (value) {
              if (value.isEmpty) {
                return '닉네임을 입력해주세요.';
              } else {
                return null;
              }
            },
            initText: nickName,
          ),
          Expanded(child: Container()),
          SignButton(
            '다음',
            onPressed: () => _onPressed(context),
          ),
        ],
      ),
    );
  }

  _onPressed(context) async {
    if (_textFieldValidate()) {
      var result = await _sendEmail(context);
      if (result['status'] == 200) {
        vertify = '';
        pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => _errorDialog(result['message']),
        );
      }
    }
  }

  _sendEmail(context) async {
    _circularProgress(context);

    var result = await postSendEmail(email);

    Get.back();

    return result;
  }

  _textFieldValidate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      return true;
    }

    return false;
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
