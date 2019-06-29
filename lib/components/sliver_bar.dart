import 'package:flutter/material.dart';

class SliverBar extends StatelessWidget {
  SliverBar({this.titleText});

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.grey[900],
        ),
        title: Text(
          titleText,
          style: TextStyle(
            color: Color(0xFFb2ebf9),
            fontFamily: 'Raleway',
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
