import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);

    // Function to change the language
    void _changeLanguage(Locale locale) {
      // This should trigger a rebuild with the new locale
    }
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
          // ListTile(
          //   leading: Icon(Icons.language),
          //   title: Text('English'),
          //   trailing: Radio<Locale>(
          //     value: Locale('en'),
          //     groupValue: currentLocale,
          //     onChanged: (Locale? value) {
          //       if (value != null) {
          //         _changeLanguage(value);
          //       }
          //     },
          //   ),
          //   onTap: () {
          //     _changeLanguage(Locale('en'));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.language),
          //   title: Text('Français'),
          //   trailing: Radio<Locale>(
          //     value: Locale('fr'),
          //     groupValue: currentLocale,
          //     onChanged: (Locale? value) {
          //       if (value != null) {
          //         _changeLanguage(value);
          //       }
          //     },
          //   ),
          //   onTap: () {
          //     _changeLanguage(Locale('fr'));
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}
