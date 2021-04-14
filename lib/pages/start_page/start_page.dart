import 'package:file_up/pages/start_page/sign_widget.dart';
import 'package:file_up/ui/logo_widget.dart';
import 'package:file_up/ui/sign_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            LogoWidget(),
            SignWidget(),
          ],
        ),
        decoration: backgroundWidget(),
      ),
    );
  }

  Decoration backgroundWidget() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/background/start_background.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
