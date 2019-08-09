import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/contact_card.dart';
import '../components/padding_text.dart';
import '../resources/constants.dart';

class Contact extends StatelessWidget {
  // url_launcher function for phone and email.
  void launchURL(url) async {
    String uri = Uri.encodeFull(url);
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 80.0),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo114.png'),
              // CircleAvatar(
              //   backgroundImage: AssetImage(kAvatar),
              //   radius: 50,
              //   backgroundColor: Colors.red,
              // ),
              PaddingText(
                padding: EdgeInsets.all(16.0),
                text: 'Ryan Lertola',
                size: 45.0,
                family: 'Raleway',
                color: Color(0xFFb2ebf9),
                weight: FontWeight.w100,
              ),
              PaddingText(
                padding: EdgeInsets.only(bottom: 4.0),
                text: kMainDescription,
                size: 18.0,
                family: 'Jura',
                color: Color(0xFFb2ebf9),
              ),
              PaddingText(
                padding: EdgeInsets.only(bottom: 16.0),
                text: kSecondaryDescription,
                size: 18.0,
                family: 'Jura',
                color: Color(0xFFb2ebf9),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xFFb2ebf9),
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
      ),
    );
  }
}
