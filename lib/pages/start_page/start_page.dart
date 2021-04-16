import 'package:file_up/pages/start_page/sign_widget.dart';
import 'package:file_up/widgets/logo_widget.dart';
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
            Expanded(
              flex: 2,
              child: LogoWidget(),
            ),
            Expanded(
              child: SignWidget(),
            ),
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
