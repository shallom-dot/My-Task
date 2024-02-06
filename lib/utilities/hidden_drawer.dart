import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
//import 'package:my_task/screens/drawer_screen.dart';
import 'package:my_task/screens/task_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Drawer',
        baseStyle: TextStyle(),
          selectedStyle: TextStyle()
        ),
       MyTask()
       )
    ];
      }



  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.amber ,
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}