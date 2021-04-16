import 'package:file_up/pages/sign_in_page/sign_in_page.dart';
import 'package:file_up/pages/sign_up_page/sign_up_page.dart';
import 'package:file_up/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: StartPage(),
    );
  }
}
