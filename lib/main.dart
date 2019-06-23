import 'package:flutter/material.dart';
import 'package:portfolio/screens/welcome_screen.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/certificates.dart';
import 'package:portfolio/screens/about_me.dart';
import 'screens/contact.dart';
import 'screens/welcome_screen.dart';

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
    WelcomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData.dark(),
      home: Scaffold(
//        appBar: AppBar(
//          title: Text('PORTFOLIO'),
//        ),
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

//
//Widget build(BuildContext context) {
//  return MaterialApp(
//    theme: ThemeData.dark(),
//    title: 'My Portfolio',
//    initialRoute: '/',
//    routes: {
//      '/projects': (context) => Projects(),
//      '/certificates': (context) => Certificates(),
//      '/about_me': (context) => AboutMe(),
//      '/contact': (context) => Contact(),
//    },
//    home: WelcomeScreen(),
//  );
//}
