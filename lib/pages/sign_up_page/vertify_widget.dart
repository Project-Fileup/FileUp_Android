import 'package:file_up/pages/sign_up_page/base_container.dart';
import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/widgets/info_textField.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';

class VertifyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      children: [
        InfoTextField('인증번호'),
        SizedBox(
          height: 20,
        ),
        SignButton(
          '인증',
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
