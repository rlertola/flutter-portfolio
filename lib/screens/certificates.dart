import 'package:flutter/material.dart';
import 'cert-viewer.dart';
import 'package:portfolio/certificates_list.dart';

class Certificates extends StatelessWidget {
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
                'Certificates',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 32.0,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                              file: certificates[0]['image'],
                              text: certificates[0]['title'],
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
                                certificates[0]['image'],
                              ),
                              Text(
                                'Treehouse',
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
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                              file: certificates[1]['image'],
                              text: certificates[1]['title'],
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
                                certificates[1]['image'],
                              ),
                              Text(
                                'Flutter',
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
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                              file: certificates[2]['image'],
                              text: certificates[2]['title'],
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
                                certificates[2]['image'],
                              ),
                              Text(
                                'Wes Bos React',
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
