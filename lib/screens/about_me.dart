import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';
import 'package:portfolio/components/big_button.dart';
import 'cert-viewer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'skills.dart';
import 'package:portfolio/resources/constants.dart';

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.black54,
              ),
              title: Text(
                'About Me',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 32.0,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                PaddingText(
                  padding: EdgeInsets.all(20.0),
                  text: kAboutMeDescription,
                  size: 20.0,
                  family: 'Raleway',
                ),
                BigButton(
                  title: 'Skills',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Skills(),
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
                              file:
                                  'assets/certificates/Resume-RyanLertola.png',
                              text: 'Resume',
                            ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
