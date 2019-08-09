import 'package:flutter/material.dart';

class PaddingText extends StatelessWidget {
  final EdgeInsets padding;
  final String text;
  final double size;
  final String family;
  final Color color;
  final FontWeight weight;

  PaddingText(
      {@required this.padding,
      @required this.text,
      @required this.size,
      @required this.family,
      @required this.color,
      this.weight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontFamily: family,
          fontWeight: weight,
          color: color,
        ),
      ),
    );
  }
}
