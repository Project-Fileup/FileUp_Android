import 'package:file_up/pages/sign_in_page/sign_in_button.dart';
import 'package:file_up/pages/sign_in_page/text_form_widget.dart';
import 'package:file_up/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height - MediaQuery.of(context).padding.top,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: LogoWidget(),
                  flex: 2,
                ),
                TextFromWidget(),
                SignInButton(),
              ],
            ),
            decoration: backgroundWidget(),
          ),
        ),
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
