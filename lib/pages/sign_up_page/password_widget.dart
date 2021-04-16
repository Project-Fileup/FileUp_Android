import 'package:file_up/pages/sign_up_page/base_container.dart';
import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/widgets/info_textField.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';

class PasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      children: [
        InfoTextField('비밀번호'),
        SizedBox(
          height: 20,
        ),
        InfoTextField('비밀번호 확인'),
        SizedBox(
          height: 20,
        ),
        SignButton(
          '완료',
          onPressed: () {
            pageController.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          },
        ),
      ],
    );
  }
}
