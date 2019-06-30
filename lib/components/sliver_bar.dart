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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              // begin: Alignment.topLeft,
              // end: Alignment.bottomCenter,
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                // Color(0xFFb2ebf9),
                Color(0xFF91b0b7),
                // Colors.grey[500],
                Colors.black12,
              ],
            ),
            // gradient: RadialGradient(
            //   center: Alignment.topRight,
            //   radius: 1.7,
            //   colors: [
            //     // Color(0xFFb2ebf9),
            //     Color(0xFF91b0b7),
            //     // Colors.grey[500],
            //     Colors.black54,
            //   ],
            // ),
          ),
          // color: Colors.grey[900],
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
