import 'package:flutter/material.dart';

class InfoTextField extends StatelessWidget {
  String text;
  String textFieldValue;
  FormFieldValidator<String> validator;
  FormFieldSetter<String> onSaved;
  bool obscureText;
  Widget suffixIcon;

  InfoTextField(
    this.text, {
    @required this.textFieldValue,
    this.validator,
    this.onSaved,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: Colors.white,
          filled: true,
          isDense: true,
        ),
      ),
    );
  }
}
