import 'package:file_up/pages/sign_up_page/email_nickName_widget.dart';
import 'package:file_up/pages/sign_up_page/password_widget.dart';
import 'package:file_up/pages/sign_up_page/vertify_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PageController pageController = PageController(
  initialPage: 0,
);

class InputWidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          EmailNickNameWidget(),
          VertifyWidget(),
          PasswordWidget(),
        ],
      ),
      onWillPop: () async {
        if (pageController.page > 0.0) {
          pageController.previousPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );

          return false;
        } else {
          email = '';
          nickName = '';
          vertify = '';
          password = '';
          rePassword = '';
          return true;
        }
      },
    );
  }
}
