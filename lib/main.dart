import 'package:file_up/pages/sign_in_page/sign_in_page.dart';
import 'package:file_up/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );
  }
}
