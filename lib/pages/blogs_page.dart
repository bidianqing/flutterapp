import 'package:flutter/material.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '微信',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Free. Cross-platform. Open source.A framework for building web apps and services with .NET and C#.'),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
