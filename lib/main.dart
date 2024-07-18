import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/mainhome.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:bottom_navigation/pages/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
      routes: {
        '/MainHome': (context) => MainHome(),
        '/HomePage': (context) => HomePage(),
        '/SettingPage': (context) => SettingPage(),
        '/ProfilePage': (context) => ProfilePage()
      },
    );
  }
}
