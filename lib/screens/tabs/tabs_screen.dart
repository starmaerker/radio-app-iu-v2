import 'package:flutter/material.dart';

import 'package:radio_app_v2/screens/feedback/feedback_screen.dart';
import 'package:radio_app_v2/screens/home/home_screen.dart';
import 'package:radio_app_v2/screens/music/music_screen.dart';

import '../../constants.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({ Key? key }) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': HomeScreen(), 'title': 'Radio 4 IU'},
    {'page': MusicScreen(), 'title': 'Musikwunsch'},
    {'page': FeedbackScreen(), 'title': 'Feedback'}
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Radio 4 IU', style: TextStyle(color: primaryColor),
          ),
        ),
        backgroundColor: secondaryColor,
      ),
      body: _pages[_selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        showSelectedLabels: true,
        backgroundColor: secondaryColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: 'Musicwunsch'),
          BottomNavigationBarItem(
              icon: Icon(Icons.feedback), label: 'Feedback'),
        ],
      ),
    );
  }
}