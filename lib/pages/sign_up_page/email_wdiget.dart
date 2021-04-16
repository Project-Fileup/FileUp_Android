import 'package:file_up/pages/sign_up_page/base_container.dart';
import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/widgets/info_textField.dart';
import 'package:file_up/widgets/sign_button.dart';
import 'package:flutter/material.dart';

class EmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      children: [
        InfoTextField('이메일'),
        SizedBox(
          height: 20,
        ),
        SignButton(
          '다음',
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
