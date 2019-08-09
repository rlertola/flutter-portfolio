import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

class CertViewer extends StatelessWidget {
  final String file;
  final String text;

  CertViewer({@required this.file, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.grey,
          ),
        ),
      ),
      body: Container(
        child: ZoomableImage(
          AssetImage(file),
          backgroundColor: Colors.grey[850],
        ),
      ),
    );
  }
}
