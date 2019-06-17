import 'package:flutter/material.dart';

class PaddingText extends StatelessWidget {
  PaddingText({this.padding, this.text, this.size, this.family});

  final EdgeInsets padding;
  final String text;
  final double size;
  final String family;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontFamily: family,
        ),
      ),
    );
  }
}
