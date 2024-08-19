import 'package:flutter/material.dart';
import 'package:rendez_vous/SearchDoctorScreen.dart';
import 'package:rendez_vous/widget/CustomDrawer.dart';
import 'package:rendez_vous/widget/RendezVous.dart';
import 'package:rendez_vous/CalendarScreen.dart';
import 'package:rendez_vous/compte.dart';
import 'package:rendez_vous/rendze_vous_screen.dart';
import './widget/NotificationsCard.dart';
import 'login_screen.dart';
import 'DashboardScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DahboardPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DahboardPage> {
  int _selectedIndex = 0;

  // List of routes corresponding to each tab
  final List<Widget> _routes = [
    DashboardScreen(),
    CalendarScreen(),
    SearchDoctorScreen(),
    RendezVousScreen(),
    CompteScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the corresponding route
    // Navigator.pushNamed(context, _routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dashboard'),
      //   backgroundColor: Color(0xFFF7F7F9), // Background color for the AppBar
      //   elevation: 0,
      // ),
      // drawer: CustomDrawer(),
      body: _routes[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // "Calendrier"
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 23,
            ), // "Calendrier"
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // "Chercher"
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.clock,
              size: 23,
            ), // "Rendez Vous"
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // "Compte"
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Change to your preferred color
        unselectedItemColor: Colors.grey[400], // Color for unselected icons
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed, // Ensures all items are displayed
        onTap: _onItemTapped,
        iconSize: 28.0, // Adjust icon size
        backgroundColor: Colors.white, // Background color for the bottom nav
        elevation: 10, // Elevation to add shadow
      ),
    );
  }
}
