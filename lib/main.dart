import 'package:flutter/material.dart';
import 'package:portfolio/screens/welcome_screen.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/certificates.dart';
import 'package:portfolio/screens/about_me.dart';
import 'screens/contact.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatelessWidget {
  static const String _title = 'My Portfolio';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: _title,
      initialRoute: '/',
      routes: {
        '/projects': (context) => Projects(),
        '/certificates': (context) => Certificates(),
        '/about_me': (context) => AboutMe(),
        '/contact': (context) => Contact(),
      },
      home: WelcomeScreen(),
    );
  }
}
