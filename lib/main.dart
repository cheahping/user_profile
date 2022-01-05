import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
      ),
      title: title,
      home: ProfilePage(),
    );
  }
}
