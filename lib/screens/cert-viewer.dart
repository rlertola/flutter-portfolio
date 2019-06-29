import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

class CertViewer extends StatelessWidget {
  CertViewer({this.file, this.text});

  final String file;
  final String text;

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
