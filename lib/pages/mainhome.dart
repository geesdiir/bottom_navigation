import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            myIndex = index;
            Navigator.pushNamed(context, '/SettingPage');
          });
        },
        items: const [
          // home
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromRGBO(109, 46, 42, 1)),
          // setting
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),

          // profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
