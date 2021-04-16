import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
              child: InputWidgetList(),
            )
          ],
        ),
        decoration: backgroundWidget(),
      ),
      resizeToAvoidBottomInset: false,
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
