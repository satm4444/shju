import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:shju/bottom_nav_bar_pages/homepage.dart';
import 'package:shju/test.dart';
import 'package:shju/tests.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  List _pages = [
    Homepage(),
    Tests(),
    Test(),
    Tests(),
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 49,
        width: double.infinity,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.4),
          onTap: _selectedPage,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.home,
                size: 24,
              ),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.heart_o,
                size: 24,
              ),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.cart_arrow_down,
                size: 24,
              ),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.user,
                size: 24,
              ),
              title: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
