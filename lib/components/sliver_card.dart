import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverCard extends StatelessWidget {
  final StatelessWidget routeTo;
  final String imagePath;
  final String titleText;
  final BuildContext context;

  SliverCard({
    @required this.routeTo,
    @required this.imagePath,
    @required this.titleText,
    @required this.context,
  });

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

// Why do I have a column inside a column???
// Try a ListTile and wrap the ListTileBar title part in a container???
