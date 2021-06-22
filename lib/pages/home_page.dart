import 'package:flutter/material.dart';
import 'package:myapp/pages/account_page.dart';
import 'package:myapp/pages/blogs_page.dart';
import 'package:myapp/pages/constants.dart';
import 'package:myapp/pages/favorites_page.dart';
import 'package:myapp/pages/profile_page.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [
    BlogsPage(),
    FavoritesPage(),
    AccountPage(),
    ProfilePage(),
  ];
  Widget _currentBody = BlogsPage();
  int _currentIndex = 0;

  void _itemTapped(int index) {
    print(index);
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
        selectedLabelStyle: TextStyle(
          fontSize: 10,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              IconData(0xe608, fontFamily: Constants.IconFontFamily),
            ),
            activeIcon: Icon(
              IconData(0xe603, fontFamily: Constants.IconFontFamily),
            ),
            label: '微信',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(0xe601, fontFamily: Constants.IconFontFamily),
            ),
            activeIcon: Icon(
              IconData(0xe602, fontFamily: Constants.IconFontFamily),
            ),
            label: '通讯录',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(0xe600, fontFamily: Constants.IconFontFamily),
            ),
            activeIcon: Icon(
              IconData(0xe604, fontFamily: Constants.IconFontFamily),
            ),
            label: '发现',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(0xe607, fontFamily: Constants.IconFontFamily),
            ),
            activeIcon: Icon(
              IconData(0xe630, fontFamily: Constants.IconFontFamily),
            ),
            label: '我',
          ),
        ],
      ),
    );
  }
}
