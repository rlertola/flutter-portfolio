import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  ContactCard({this.onTap, this.titleText, this.icon});

  final Function onTap;
  final String titleText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.white,
            ),
            title: Text(
              titleText,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
