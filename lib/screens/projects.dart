import 'package:flutter/material.dart';
import 'package:portfolio/components/padding_text.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portfolio',
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          10,
          (index) {
            return Center(
              child: Container(
                width: 180.0,
                height: 100.0,
                color: Colors.blue[200],
                child: Text(
                  'Project ${index + 1}',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
