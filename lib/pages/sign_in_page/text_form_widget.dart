import 'package:file_up/ui/info_textField.dart';
import 'package:flutter/material.dart';

class TextFromWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoTextField('이메일'),
          SizedBox(
            height: 10,
          ),
          InfoTextField('비밀번호'),
        ],
      ),
    );
  }
}
