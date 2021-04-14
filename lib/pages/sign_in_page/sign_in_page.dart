import 'package:file_up/pages/sign_in_page/sign_in_button.dart';
import 'package:file_up/pages/sign_in_page/text_form_widget.dart';
import 'package:file_up/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            LogoWidget(),
            TextFromWidget(),
            SignInButton(),
          ],
        ),
        decoration: backgroundWidget(),
      ),
    );
  }

  Decoration backgroundWidget() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/background/sign_background.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
