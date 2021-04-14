import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  String text;
  Color color;

  SignButton(this.text, {this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 200,
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
        onPressed: () {},
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
