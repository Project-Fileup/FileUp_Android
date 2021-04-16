import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  String text;
  Color color;
  VoidCallback onPressed;

  SignButton(this.text, {this.color = Colors.blue, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 50,
      height: size.height / 15,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.blue),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor(),
          ),
        ),
      ),
    );
  }

  Color textColor() {
    if (color == Colors.white) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }
}
