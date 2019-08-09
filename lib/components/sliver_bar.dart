import 'package:flutter/material.dart';

class SliverBar extends StatelessWidget {
  final String titleText;
  SliverBar({@required this.titleText});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF91b0b7),
                Colors.black12,
              ],
            ),
          ),
        ),
        title: Text(
          titleText,
          style: TextStyle(
            color: Color(0xFFb2ebf9),
            fontWeight: FontWeight.w100,
            fontFamily: 'Raleway',
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
