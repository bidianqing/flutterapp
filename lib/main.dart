import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '微信',
      theme: ThemeData(
        primarySwatch: Colors.green,
        platform: TargetPlatform.iOS,
      ),
      home: HomePage(),
    );
  }
}
