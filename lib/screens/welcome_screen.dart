import 'package:flutter/material.dart';
import '../components/big_button.dart';
import 'package:portfolio/components/padding_text.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PaddingText(
                padding: EdgeInsets.all(16.0),
                text: 'Ryan Lertola',
                size: 65.0,
                family: 'Lobster',
              ),
              PaddingText(
                padding: EdgeInsets.only(bottom: 4.0),
                text: 'Fullstack Javascript Developer,',
                size: 20.0,
                family: 'Raleway',
              ),
              PaddingText(
                padding: EdgeInsets.only(bottom: 16.0),
                text: 'Dabbler in Flutter',
                size: 20.0,
                family: 'Raleway',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BigButton(
                title: 'PROJECTS',
                onPress: () {
                  Navigator.pushNamed(context, '/projects');
                },
              ),
              BigButton(
                title: 'CERTIFICATES',
                onPress: () {
                  Navigator.pushNamed(context, '/certificates');
                },
              ),
              BigButton(
                title: 'ABOUT ME',
                onPress: () {
                  Navigator.pushNamed(context, '/about_me');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}