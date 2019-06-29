import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  BigButton({this.title, this.onPress});

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Material(
        elevation: 5.0,
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 340.0,
          height: 65.0,
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFFb2ebf9),
              fontSize: 32.0,
              fontFamily: 'Raleway',
            ),
          ),
        ),
      ),
    );
  }
}
