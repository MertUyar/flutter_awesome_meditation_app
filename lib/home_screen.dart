import 'package:flutter/material.dart';

import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedBottomNavIndex = 0;
  final List<BottomNavigationBarItem> _bottomNavIcons = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.build_circle_outlined,
      ),
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.bar_chart_outlined,
      ),
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle_outlined,
      ),
      label: "",
    ),
  ];

  List<Widget> _pages = [
    MainScreen(),
    const Center(
      child: Icon(
        Icons.camera,
        size: 150,
      ),
    ),
    const Center(
      child: Icon(
        Icons.chat,
        size: 150,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedBottomNavIndex,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottomNavIndex,
        elevation: 2,
        iconSize: 30,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.blueAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xff1C2031),
        onTap: (int index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
        items: _bottomNavIcons,
      ),
    );
  }
}
