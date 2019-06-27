import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';
import 'package:portfolio/components/big_button.dart';
import 'package:portfolio/resources/constants.dart';
import 'package:portfolio/components/sliver_bar.dart';
import 'cert-viewer.dart';
import 'skills.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  // url_launcher function.
  void launchURL() async {
    const url = kGitHubUrl;
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
          SliverBar(
            titleText: 'About Me',
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
