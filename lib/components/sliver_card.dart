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
            Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    imagePath,
                  ),
                  Text(
                    titleText,
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.grey,
                        fontFamily: 'Raleway'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
