import 'package:flutter/material.dart';
import 'package:rendez_vous/widget/CustomDrawer.dart';
import 'package:rendez_vous/widget/RendezVous.dart';
import './widget/NotificationsCard.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tableau de board'),
        backgroundColor: Color(0xFFF7F7F9), // Background color for the AppBar
        elevation: 0,
      ),
      drawer: CustomDrawer(),
      body: Container(
        color: Color(0xFFF7F7F9), // Background color for the body
        child: ListView(
          children: <Widget>[
            ProgressNotificationsCard(), // Here is your custom notifications card
            AppointmentsCard(), // Here is your custom appointments card
            // You can add more widgets/cards here as needed
          ],
        ),
      ),
    );
  }
}
