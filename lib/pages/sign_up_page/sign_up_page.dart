import 'package:file_up/pages/sign_up_page/input_widget_list.dart';
import 'package:file_up/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: heigth,
            child: Column(
              children: [
                Expanded(
                  child: LogoWidget(),
                ),
                Expanded(
                  child: InputWidgetList(),
                )
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
