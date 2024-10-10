import 'package:flutter/material.dart';
import 'login.dart';  // Import de la page de connexion

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeageState();
}


class _HomeageState extends State<HomePage> {
  int _selectedIndex = 0;  // To track the current selected index in the bottom nav bar

  // Pages corresponding to each bottom nav bar item
  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home Page Content', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings Page Content', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Page Content', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Home Page"),
      ),
      body: _pages[_selectedIndex],  // Show the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,  // Current selected tab
        selectedItemColor: Colors.deepPurple,  // Color for the selected item
        onTap: _onItemTapped,  // Update the selected index when a tab is tapped
      ),
    );
  }
}
