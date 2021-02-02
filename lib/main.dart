import 'package:Profile/pages/home.dart';
import 'package:Profile/pages/profile.dart';
import 'package:Profile/pages/dashboard.dart';
import 'package:Profile/pages/about.dart';
import 'package:Profile/pages/settings.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile',
      theme: ThemeData(
          // canvasColor: Color(0xFFFFFFFF),
          accentColor: Color(0xFF5300C7),
          backgroundColor: Colors.pinkAccent,
          // brightness: Brightness.light,
          primaryColor: Color(0xFF8935FF),
          ),
      initialRoute: 'home',
      debugShowCheckedModeBanner: true,
      routes: {
        'home': (context) => Home(),
        'dashboard': (context) => Dashboard(),
        'profile': (context) => Profile(),
        'about': (context) => About(),
        'settings': (context) => Settings(),
      },
      // home: Home() ,
    );
  }
}

