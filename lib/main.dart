import 'package:flutter/material.dart';
import 'screens/contact.dart';
import 'package:portfolio/screens/about_me.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/certificates.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PortfolioState();
  }
}

class PortfolioState extends State<Portfolio> {
  int selectedIndex = 0;
  final _pageOptions = [
    Contact(),
    AboutMe(),
    Projects(),
    Certificates(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: _pageOptions[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              title: Text('Contact'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('About Me'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_mode),
              title: Text('Projects'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_circle),
              title: Text('Certificates'),
            ),
          ],
          currentIndex: selectedIndex,
          fixedColor: Colors.white,
          backgroundColor: Colors.black54,
//          selectedItemColor: Colors.white,
//          unselectedItemColor: Colors.grey[575],
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
