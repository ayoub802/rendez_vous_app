import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rendez_vous/widget/CompteTab.dart';
import 'package:rendez_vous/widget/Historique.dart';
import 'package:rendez_vous/widget/RendezVous.dart';
import 'package:rendez_vous/widget/SecuriteTab.dart';
import 'package:rendez_vous/widget/NotificationTab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final Widget icon;

  const CustomTab({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize:
            MainAxisSize.min, // Ensures the Row does not take up extra space
        children: <Widget>[
          icon,
          // Icon(
          //   // color: Colors.blue,
          //   size: 13,
          // ), // Adjust icon color as needed
          SizedBox(width: 10.0), // Space between the icon and text
          Text(
            text.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class RendezVousScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rendez Vous'),
          automaticallyImplyLeading: false,

          bottom: TabBar(
            labelColor: Colors.blue, // Color for selected tab
            unselectedLabelColor:
                Color(0xFF9495a2), // Color for unselected tabs
            indicatorColor: Colors.blue, // Color for the tab indicator
            indicatorWeight: 3.0, // Thickness of the tab indicator
            tabs: [
              CustomTab(
                text: 'Mes Rendez-vous',
                icon: FaIcon(
                  FontAwesomeIcons.clock,
                  size: 20,
                ),
              ),
              CustomTab(
                text: 'Historique',
                icon: FaIcon(
                  FontAwesomeIcons.pen,
                  size: 15,
                ),
              ),
              // CustomTab(text: 'Notifications', icon: Icons.notifications),
              // CustomTab(text: 'Paiment', icon: Icons.euro),
            ],
          ),
          backgroundColor: Colors.white, // Background color of the AppBar
        ),
        body: TabBarView(
          children: [
            AppointmentsCard(), // First tab's content
            HistoriqueTab(), // First tab's content
          ],
        ),
      ),
    );
  }
}
