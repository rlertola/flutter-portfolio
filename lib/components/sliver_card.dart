import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverCard extends StatelessWidget {
  SliverCard({this.routeTo, this.imagePath, this.titleText, this.context});

  final StatelessWidget routeTo;
  final String imagePath;
  final String titleText;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeTo,
          ),
        );
      },
      child: Card(
        borderOnForeground: true,
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    titleText,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                        fontFamily: 'Raleway'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
