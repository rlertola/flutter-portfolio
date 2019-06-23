import 'package:flutter/material.dart';
import 'package:portfolio/projects-list.dart';
import 'package:portfolio/components/big_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  void launchURL(url) async {
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
        title: Text(projects[0]['project_name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                projects[0]['description'],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            BigButton(
              title: 'Live Demo',
              onPress: () {
                launchURL(projects[0]['live_link']);
              },
            ),
            BigButton(
              title: 'GitHub Repo',
              onPress: () {
                launchURL(projects[0]['github_link']);
              },
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(projects[0]['image_urls'][0]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(projects[0]['image_urls'][1]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(projects[0]['image_urls'][2]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(projects[0]['image_urls'][3]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(projects[0]['image_urls'][4]),
            ),
          ],
        ),
      ),
    );
  }
}
