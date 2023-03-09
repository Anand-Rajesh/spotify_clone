import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/library.dart';

import '../const.dart';
import '../screens/homepage.dart';
import '../screens/searchpage.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int index =0;
  final pages=[
    const HomePage(),
    const SearchPage(),
    const Library()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: black,
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap: (pages){setState(() {
        index=pages;
      });},
      selectedItemColor: white,
      backgroundColor: const Color(0x00ffffff),
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 30), label: 'Home Page'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, size: 30), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.my_library_music_outlined, size: 30),
            label: 'Your Library'),
      ],
    ),);
  }
}
