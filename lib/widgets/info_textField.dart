import 'package:flutter/material.dart';

class InfoTextField extends StatelessWidget {
  String text;

  InfoTextField(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: Colors.white,
          filled: false,
          isDense: true,
        ),
      ),
    );
  }
}
