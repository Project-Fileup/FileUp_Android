import 'package:file_up/pages/sign_in_page/text_form_widget.dart';
import 'package:file_up/pages/sign_up_page/base_container.dart';
import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/widgets/info_textField.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();
String vertify;

class VertifyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: BaseContainer(
        children: [
          InfoTextField(
            '인증번호',
            onSaved: (newValue) => vertify = newValue,
            validator: (value) {
              print(value);
              if (value.isEmpty) {
                return '인증번호를 입력해주세요';
              } else {
                return null;
              }
            },
            initText: vertify,
          ),
          Expanded(child: Container()),
          SignButton(
            '인증',
            onPressed: () {
              if (formKey.currentState.validate()) {
                formKey.currentState.save();

                pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
