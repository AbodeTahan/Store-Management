import 'package:flutter/material.dart';
import 'package:untitled/Screen/adminScreen.dart';
import 'package:untitled/Screen/category.dart';
import 'package:untitled/Screen/homePage.dart';
import 'package:untitled/Screen/setting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex = 3;
  List<Widget> body = [
    Setting(),
    AdminScreen(),
    Category(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor:Colors.black,
        selectedItemColor: Color(0xffeec407),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        selectedIconTheme: IconThemeData(color: Color(0xffeec407)),
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: "Setting", icon: Icon(Icons.settings)),
          BottomNavigationBarItem(
              label: "Admin", icon: Icon(Icons.manage_accounts)),
          BottomNavigationBarItem(
              label: "Category", icon: Icon(Icons.category)),
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home_outlined)),
        ],
      ),
    );
  }
}
