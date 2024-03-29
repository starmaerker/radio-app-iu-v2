import 'package:flutter/material.dart';
import 'package:radio_app_v2/generated/l10n.dart';

import 'package:radio_app_v2/screens/feedback/feedback_screen.dart';
import 'package:radio_app_v2/screens/home/home_screen.dart';
import 'package:radio_app_v2/screens/music/wish_screen.dart';

import '../../utilities/constants.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _pages = [
      {'page': HomeScreen(), 'title': 'Radio 4 IU'},
      {'page': WishScreen(), 'title': S.of(context).tab_music_wish},
      {'page': FeedbackScreen(), 'title': 'Feedback'}
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Center(
          child: Text(
            _pages[_selectedIndex]['title'] as String,
            style: TextStyle(color: primaryColor),
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
              icon: Icon(Icons.music_note), label: S.of(context).tab_music_wish),
          BottomNavigationBarItem(
              icon: Icon(Icons.feedback), label: 'Feedback'),
        ],
      ),
    );
  }
}
