import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';
import 'package:zoomable_image/zoomable_image.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

//class CertViewer extends StatefulWidget {
//  @override
//  _CertViewerState createState() => _CertViewerState();
//}
//
//class _CertViewerState extends State<CertViewer> {
////  bool isLoading = true;
////  PDFDocument pdf;
////
////  loadPDF() async {
//////    pdf = await PDFDocument.fromAsset('certificates/treehouse-cert.pdf');
////    pdf = await PDFDocument.fromAsset('certificates/Resume-RyanLertola.pdf');
////
////    setState(() {
////      isLoading = false;
////    });
////  }
////
////  @override
////  void initState() {
////    super.initState();
////    loadPDF();
////  }
//
//
//  @override
//  Widget build(BuildContext context) {
////    return Scaffold(
////      appBar: AppBar(
////        title: Text('Portfolio'),
////      ),
////      body: Container(
////        child: isLoading
////            ? Center(
////                child: CircularProgressIndicator(),
////              )
////            : PDFViewer(document: pdf),
////      ),
////    );
//
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Portfolio'),
//      ),
//      body: Center(
//        child: Image.asset(
//          'certificates/WesBosReactPNG.png',
//        ),
//      ),
//    );
//  }
//}

class CertViewer extends StatelessWidget {
  CertViewer({this.file, this.text});

  final String file;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Container(
        child: ZoomableImage(
          AssetImage(file),
          backgroundColor: Colors.grey[850],
        ),
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//
//          Flexible(
//            child: PaddingText(
//              padding: EdgeInsets.all(8.0),
//              text: text,
//              size: 32.0,
//              family: 'Raleway',
//            ),
//          ),
//        ],
      ),
    );
  }
}
