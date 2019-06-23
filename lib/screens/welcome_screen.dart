import 'package:flutter/material.dart';
import '../components/big_button.dart';
import 'package:portfolio/components/padding_text.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            children: <Widget>[
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
            ],
          ),
          Column(
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
              BigButton(
                title: 'CONTACT',
                onPress: () {
                  Navigator.pushNamed(context, '/contact');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
