import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';
import 'package:portfolio/components/big_button.dart';
import 'cert-viewer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  void launchURL() async {
    const url = 'https://github.com/rlertola?tab=repositories';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PORTFOLIO'),
      ),
      body: ListView(
        children: <Widget>[
          PaddingText(
            padding: EdgeInsets.all(16.0),
            text: 'About Me',
            size: 65.0,
            family: 'Lobster',
          ),
          PaddingText(
            padding: EdgeInsets.all(20.0),
            text:
                'I am an aspiring fullstack JavaScript developer who recently completed the TreeHouse Techdegree program with a primary focus on JavaScript, Node, React, Express and Mongo. I have also completed a Flutter Development course. Please check out my projects and certificates.',
            size: 20.0,
            family: 'Raleway',
          ),
          BigButton(
            title: 'Skills',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CertViewer(
                        file: 'certificates/treehouse-cert.png',
                        text: 'Treehouse',
                      ),
                ),
              );
            },
          ),
          BigButton(
            title: 'GitHub',
            onPress: launchURL,
          ),
          BigButton(
            title: 'Resume',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CertViewer(
                        file: 'certificates/Resume-RyanLertola.png',
                        text: 'Resume',
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
