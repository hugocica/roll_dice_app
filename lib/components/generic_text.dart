import 'package:flutter/material.dart';

class GenericText extends StatelessWidget {
  const GenericText(this.text, {super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
    );
  }
}
