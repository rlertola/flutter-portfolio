import 'package:flutter/material.dart';
import 'big_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PORTFOLIO'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Ryan Lertola',
                    style: TextStyle(
                      fontSize: 65.0,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'Fullstack Javascript Developer,',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                Text(
                  'Dabbler in Flutter',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                  ),
                ),
              ],
            ),
          ),
          BigButton(
            title: 'PROJECTS',
            onPress: () {
              print('projects pressed');
            },
          ),
          BigButton(
            title: 'CERTIFICATES',
            onPress: () {
              print('certs pressed');
            },
          ),
          BigButton(
            title: 'ABOUT ME',
            onPress: () {
              print('about me pressed');
            },
          ),
        ],
      ),
    );
  }
}
