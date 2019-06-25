import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONTACT',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/me.jpg'),
              radius: 50,
              backgroundColor: Colors.red,
            ),
            PaddingText(
              padding: EdgeInsets.all(16.0),
              text: 'Ryan Lertola',
              size: 50.0,
              family: 'Lobster',
            ),
            PaddingText(
              padding: EdgeInsets.only(bottom: 4.0),
              text: 'Fullstack Javascript Developer,',
              size: 18.0,
              family: 'Raleway',
            ),
            PaddingText(
              padding: EdgeInsets.only(bottom: 16.0),
              text: 'Dabbler in Flutter',
              size: 18.0,
              family: 'Raleway',
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    '123-456-7890',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    'rlertola@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
