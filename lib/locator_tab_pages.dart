import 'package:flutter/material.dart';
import 'package:food_restorant_desing_2/home_page.dart';

class LocatorTabsPages extends StatefulWidget {

  const LocatorTabsPages({Key? key}) : super(key: key);

  @override
  State<LocatorTabsPages> createState() => _LocatorTabsPagesState();
}

class _LocatorTabsPagesState extends State<LocatorTabsPages> {

  int _currentPage = 0;
  final List<Widget> _pages = [HomePage()];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextTheme = theme.textTheme;
    return Scaffold(
        body: _pages[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.punch_clock),label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.login_outlined),label: "Account"),
          ],
          elevation: 1,
          currentIndex: _currentPage,
          onTap: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          selectedItemColor: theme.colorScheme.primary,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
      )
    );
  }
}
