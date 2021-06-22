import 'package:flutter/material.dart';
import 'account_page.dart';
import 'favorites_page.dart';
import 'profile_page.dart';
import 'constants.dart';
import 'conversation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [
    ConversationPage(),
    FavoritesPage(),
    AccountPage(),
    ProfilePage(),
  ];

  int _currentIndex = 0;
  var _pageController = PageController();

  void _itemTapped(int index) {
    setState(() {
      _pageController.jumpToPage(index);
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _pages.length,
        controller: _pageController,
        onPageChanged: (int index) => {
          setState(() {
            _currentIndex = index;
          }),
        },
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
      ),
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
