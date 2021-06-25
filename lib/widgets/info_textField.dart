import 'package:flutter/material.dart';

class InfoTextField extends StatefulWidget {
  String text;
  FormFieldValidator<String> validator;
  FormFieldSetter<String> onSaved;
  bool obscureText;
  String initText;
  TextEditingController textEditingController;

  InfoTextField(
    this.text, {
    Key key,
    this.validator,
    this.onSaved,
    this.obscureText = false,
    this.initText,
    this.textEditingController,
  }) : super(key: key);

  @override
  _InfoTextFieldState createState() => _InfoTextFieldState();
}

class _InfoTextFieldState extends State<InfoTextField> {
  bool _visibility;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _visibility = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
        controller: widget.textEditingController,
        obscureText: _visibility,
        onSaved: widget.onSaved,
        validator: widget.validator,
        initialValue: widget.initText,
        decoration: InputDecoration(
          hintText: widget.text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          suffixIcon: widget.obscureText ? _obscureChage() : null,
        ),
      ),
    );
  }

  _obscureChage() {
    return IconButton(
      icon: Icon(_visibility ? Icons.visibility : Icons.visibility_off),
      onPressed: () {
        setState(() {
          _visibility = !_visibility;
        });
      },
    );
  }
}
