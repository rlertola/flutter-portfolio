import 'package:flutter/material.dart';
import 'package:portfolio/components/sliver_bar.dart';
import 'package:portfolio/resources/skills_list.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverBar(
              titleText: 'Skills',
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
