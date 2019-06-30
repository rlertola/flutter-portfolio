import 'package:flutter/material.dart';

class PaddingText extends StatelessWidget {
  PaddingText(
      {this.padding,
      this.text,
      this.size,
      this.family,
      this.color,
      this.weight});

  final EdgeInsets padding;
  final String text;
  final double size;
  final String family;
  final Color color;
  final FontWeight weight;

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
