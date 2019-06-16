import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: _title,
      home: WelcomeScreen(),
    );
  }
}
