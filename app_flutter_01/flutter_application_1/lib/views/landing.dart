import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/channel.dart';
import 'package:flutter_application_1/views/chat.dart';
import 'package:flutter_application_1/views/notice.dart';
import 'package:flutter_application_1/views/profile.dart';
import 'package:flutter_application_1/views/home.dart';

/**
 * 主页导航栏（完工）
 */
class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ChatPage(),
    ChannelPage(),
    ProfilePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavBar = BottomNavigationBar(
      
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      unselectedItemColor: Color.fromRGBO(197, 178, 255, 1),
      selectedItemColor: Color.fromRGBO(108, 95, 188, 1),
      showUnselectedLabels:true,
      
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.connected_tv),
          label: "Channel",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Profile",
        ),
      ],
    );

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
      body: _pages[_currentIndex],
    );
  }
}
