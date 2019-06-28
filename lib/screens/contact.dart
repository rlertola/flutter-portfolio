import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';
import 'package:portfolio/components/contact_card.dart';
import 'package:portfolio/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  // url_launcher function for phone and email.
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
        title: Text(
          'Contact',
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.grey,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(kAvatar),
              radius: 50,
              backgroundColor: Colors.red,
            ),
            PaddingText(
              padding: EdgeInsets.all(16.0),
              text: 'Ryan Lertola',
              size: 50.0,
              family: 'Raleway',
            ),
            PaddingText(
              padding: EdgeInsets.only(bottom: 4.0),
              text: kMainDescription,
              size: 18.0,
              family: 'Raleway',
            ),
            PaddingText(
              padding: EdgeInsets.only(bottom: 16.0),
              text: kSecondaryDescription,
              size: 18.0,
              family: 'Raleway',
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            ContactCard(
              onTap: () => launchURL(kSMS),
              titleText: kPhoneNumberText,
              icon: Icons.chat,
            ),
            ContactCard(
              onTap: () => launchURL(kEmailAddressURL),
              titleText: kEmailAddress,
              icon: Icons.email,
            ),
          ],
        ),
      ),
    );
  }
}
