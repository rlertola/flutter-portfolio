import 'package:flutter/material.dart';
import 'package:portfolio/certificates_list.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.black54,
                ),
                title: Text(
                  'Skills',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 32.0,
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        skills[index]['logos'][1],
                      ),
                      Text(
                        skills[index]['title'],
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  );
                },
                childCount: skills.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
