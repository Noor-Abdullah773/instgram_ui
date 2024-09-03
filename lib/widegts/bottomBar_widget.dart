import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(child: BottomNavigationBar(
      selectedItemColor:Colors.black ,
      showSelectedLabels: false,
      showUnselectedLabels:false,
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      items: [
      BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon:Icon(Icons.video_call_rounded),label: 'Reels'),
      BottomNavigationBarItem(icon:Icon(Icons.favorite_outline_rounded),label: 'Heart'),
      BottomNavigationBarItem(icon:Icon(Icons.add),label: 'Add'),
      BottomNavigationBarItem(icon:CircleAvatar(child: Image.asset('images/doctor.png'),),label: 'User'),
    ],),);
  }
}