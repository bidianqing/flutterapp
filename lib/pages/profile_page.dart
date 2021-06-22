import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      backgroundColor: Color.fromARGB(0, 246, 246, 246),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Title of Blog ${index + 1}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Free. Cross-platform. Open source.A framework for building web apps and services with .NET and C#.'),
                ],
              ),
            ));
          }),
    );
  }
}
