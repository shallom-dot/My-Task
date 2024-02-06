import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_task/screens/calender_screen.dart';
//import 'package:my_task/screens/drawer_screen.dart';
import 'package:my_task/screens/task_screen.dart';
import 'package:my_task/screens/user_screen.dart';
import 'package:my_task/utilities/hidden_drawer.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  

  final List<Widget> _screens = [
    const HiddenDrawer(),
    const MyTask(),
    const MyCalender(),
     const MyUser(),
  ];
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar:
        Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.amber,
              gap: 8,
              
              padding: const EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.subject, text: 'Drawer'),
                GButton(icon: Icons.task, text:'Tasks'),
                GButton(icon: Icons.calendar_month, text: 'Calender'),
                GButton(icon: Icons.manage_accounts, text: 'User'),
              ],
           selectedIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
               ) ),
        ));
  }
}