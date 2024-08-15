import 'package:flutter/material.dart';
import 'package:rendez_vous/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("Admin"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/avatar.png"), // replace with your asset image
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              // Handle navigation to Profile
            },
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Inbox'),
            onTap: () {
              // Handle navigation to Inbox
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chat'),
            onTap: () {
              // Handle navigation to Chat
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle navigation to Settings
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('FAQ'),
            onTap: () {
              // Handle navigation to FAQ
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
            },
          ),
        ],
      ),
    );
  }
}
