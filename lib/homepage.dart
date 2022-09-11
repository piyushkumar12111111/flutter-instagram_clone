import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/home.dart';
import 'package:flutter_instagram_ui/search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  void _navigatedBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    
    UserHome(),
    UserSearch(),
    

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('body here')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatedBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
