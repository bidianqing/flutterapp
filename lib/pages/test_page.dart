import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestPage extends StatelessWidget {
  const TestPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Page'),
        centerTitle: true,
        backgroundColor: Colors.green,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
      ),
      body: Container(
        child: Center(
          child: Text('Test Page'),
        ),
      ),
    );
  }
}