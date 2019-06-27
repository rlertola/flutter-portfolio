import 'package:flutter/material.dart';
import 'package:portfolio/components/sliver_bar.dart';
import 'package:portfolio/components/sliver_card.dart';
import 'project-page.dart';
import 'package:portfolio/resources/projects_list.dart';

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
                  imagePath: projects[index]['image_urls'][0],
                  titleText: projects[index]['project_name'],
                  context: context,
                );

                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => Project(
                //               index: index,
                //             ),
                //       ),
                //     );
                //   },
                //   child: Card(
                //     borderOnForeground: true,
                //     elevation: 20.0,
                //     child: Column(
                //       children: <Widget>[
                //         Container(
                //           padding: EdgeInsets.all(12.0),
                //           child: Column(
                //             children: <Widget>[
                //               Image.asset(
                //                 projects[index]['image_urls'][0],
                //               ),
                //               Text(
                //                 projects[index]['project_name'],
                //                 style: TextStyle(
                //                     fontSize: 24.0,
                //                     color: Colors.white,
                //                     fontFamily: 'Raleway'),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // );
              },
              childCount: projects.length,
            ),
          )
        ],
      ),
    );
  }
}
