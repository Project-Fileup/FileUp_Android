import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  List<Widget> children;

  BaseContainer({@required this.children}) : assert(children != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: children,
      ),
    );
  }
}
