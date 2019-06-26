import 'package:flutter/material.dart';
import 'package:portfolio/resources/projects_list.dart';
import 'project-page.dart';

class Projects extends StatelessWidget {
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
                'Projects',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 32.0,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Project(
                              index: index,
                            ),
                      ),
                    );
                  },
                  child: Card(
                    borderOnForeground: true,
                    elevation: 20.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                projects[index]['image_urls'][0],
                              ),
                              Text(
                                projects[index]['project_name'],
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.white,
                                    fontFamily: 'Raleway'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
