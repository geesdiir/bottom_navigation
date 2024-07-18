import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:bottom_navigation/pages/setting.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), SettingPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mian Home Page"),
        backgroundColor: const Color(0xFF4C56AF),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
