import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'test_page.dart';

/// 会话
class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        centerTitle: true,
        backgroundColor: Colors.green,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return TestPage();
            },
          ));
        },
        child: Icon(Icons.add),
      ),
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
