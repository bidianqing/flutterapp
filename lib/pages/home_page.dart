import 'package:flutter/material.dart';
import 'package:myapp/pages/account_page.dart';
import 'package:myapp/pages/blogs_page.dart';
import 'package:myapp/pages/favorites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [BlogsPage(), FavoritesPage(), AccountPage()];
  Widget _currentBody = BlogsPage();
  int _currentIndex = 0;

  void _itemTapped(int index) {
    setState(() {
      _currentBody = _pages[index];
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _itemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '微信',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '通讯录',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: '发现',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我',
          )
        ],
      ),
    );
  }
}
