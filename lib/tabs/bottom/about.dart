import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          'Ctrl+V',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
