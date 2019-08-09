import 'package:flutter/material.dart';

import '../components/sliver_bar.dart';
import '../components/sliver_card.dart';
import '../resources/certificates_list.dart';
import 'cert-viewer.dart';

class Certificates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverBar(
            titleText: 'Certificates',
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SliverCard(
                  routeTo: CertViewer(
                    file: certificates[index]['image'],
                    text: certificates[index]['title'],
                  ),
                  imagePath: certificates[index]['image'],
                  titleText: certificates[index]['title'],
                  context: context,
                );
              },
              childCount: certificates.length,
            ),
          ),
        ],
      ),
    );
  }
}
