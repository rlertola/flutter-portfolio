import 'package:flutter/material.dart';

import '../components/sliver_bar.dart';
import '../components/sliver_card.dart';
import '../resources/projects_list.dart';
import 'project-page.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverBar(
            titleText: 'Projects',
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SliverCard(
                  routeTo: Project(
                    index: index,
                  ),
                  imagePath: projects[index]['main_image'],
                  titleText: projects[index]['project_name'],
                  context: context,
                );
              },
              childCount: projects.length,
            ),
          )
        ],
      ),
    );
  }
}
