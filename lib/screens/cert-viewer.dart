import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
          child: Image.asset(file),
          // child: ZoomableImage(
          //   AssetImage(file),
          //   backgroundColor: Colors.grey[850],
          // ),
        ),
      ),
    );
  }
}

// class CertViewer extends StatelessWidget {
//   final String file;
//   final String text;

//   CertViewer({@required this.file, @required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           text,
//           style: TextStyle(
//             fontFamily: 'Raleway',
//             color: Colors.grey,
//           ),
//         ),
//       ),
//       body: Container(
//         child: ZoomableImage(
//           AssetImage(file),
//           backgroundColor: Colors.grey[850],
//         ),
//       ),
//     );
//   }
// }
