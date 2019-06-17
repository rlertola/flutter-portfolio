import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';
import 'package:portfolio/components/big_button.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'cert-viewer.dart';

class Certificates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PORTFOLIO'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PaddingText(
                  padding: EdgeInsets.all(16.0),
                  text: 'Certificates',
                  size: 65.0,
                  family: 'Lobster',
                ),
                SizedBox(
                  height: 40.0,
                ),
                BigButton(
                  title: 'Treehouse',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                              file: 'certificates/treehouse-cert.png',
                              text: 'Treehouse',
                            ),
                      ),
                    );
                  },
                ),
                BigButton(
                  title: 'Flutter',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                              file: 'certificates/flutter-cert.png',
                              text: 'Flutter',
                            ),
                      ),
                    );
                  },
                ),
                BigButton(
                  title: 'React',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                              file: 'certificates/WesBosReact-cert.png',
                              text: 'Wes Bos React',
                            ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
