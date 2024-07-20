import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/HomeScreen.dart';

class Navbar extends StatefulWidget {
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedTndex = 0;
  final _screens = [
    HomeScreen(),
  //ProfileScreen(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedTndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue.shade600,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedTndex,
          onTap: (Index) {
            setState(() {
              _selectedTndex = Index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              backgroundColor: Colors.blue.shade600,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
            ),
             
          ],
        ),
      ),
    );
  }
}
