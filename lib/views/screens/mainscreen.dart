import 'package:flutter/material.dart';
import 'package:lab_asgm_2/views/screens/accountscreen.dart';
import 'package:lab_asgm_2/views/screens/sellscreen.dart';
import '../../models/user.dart';
import 'homescreen.dart';
import 'chatscreen.dart';
import 'searchscreen.dart';

class MainScreen extends StatefulWidget {
  final User user;

  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "BarterIt";

  @override
  void initState() {
    super.initState();
    tabchildren = [
      HomeScreen(user: widget.user),
      SearchScreen(user: widget.user),
      SellScreen(user: widget.user),
      ChatScreen(user: widget.user),
      AccountScreen(user: widget.user)
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt_sharp,
                ),
                label: "Sell"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble,
                ),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Account")
          ]),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
      if (_currentIndex == 0) {
        maintitle = "BarterIt";
      }
      if (_currentIndex == 1) {
        maintitle = "Search";
      }
      if (_currentIndex == 2) {
        maintitle = "Sell";
      }
      if (_currentIndex == 3) {
        maintitle = "Chat";
      }
      if (_currentIndex == 4) {
        maintitle = "Account";
      }
    });
  }
}