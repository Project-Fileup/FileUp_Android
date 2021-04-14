import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SvgPicture.asset(
        "images/logo/main_logo.svg",
        height: 150,
      ),
    );
  }
}
