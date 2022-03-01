import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  // final dynamic onPressed;

  const CircleButton(
      {Key? key, //??
      required this.icon,
      required this.iconSize})
      : super(key: key);
  // required this.onPressed})
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(6.0),
        decoration: const BoxDecoration(
            color: Color(0xFFEEEEEE), shape: BoxShape.circle),
        child: Center(
          child: IconButton(
            icon: Icon(icon),
            iconSize: iconSize,
            color: Colors.black,
            onPressed: () => {}, //must add onPressed function
          ),
        ));
  }
}
