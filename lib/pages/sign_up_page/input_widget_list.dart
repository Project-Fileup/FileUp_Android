import 'package:file_up/pages/sign_up_page/email_wdiget.dart';
import 'package:file_up/pages/sign_up_page/password_widget.dart';
import 'package:file_up/pages/sign_up_page/vertify_widget.dart';
import 'package:flutter/material.dart';

PageController pageController = PageController(
  initialPage: 0,
);

class InputWidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        EmailWidget(),
        VertifyWidget(),
        PasswordWidget(),
      ],
    );
  }
}
