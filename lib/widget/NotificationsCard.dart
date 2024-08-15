import 'package:flutter/material.dart';

class ProgressNotificationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Color(0xFFFFFFFF),
      elevation: 0,
      child: Column(
        children: <Widget>[
          ProgressNotificationTile(
            color: Colors.red,
            title: 'Rendez-vous annulé !',
            subtitle: 'Vous avez annulé votre rendez-vous',
            date: 'Aujourd’hui',
          ),
          ProgressNotificationTile(
            color: Colors.green,
            title: 'Votre rendez-vous est confirmé !',
            subtitle:
                'Votre rendez-vous du 10 août 2024 à 10h30 est bien confirmé',
            date: 'Hier',
          ),
          ProgressNotificationTile(
            color: Colors.green,
            title: 'Vous avez modifié un rendez-vous !',
            subtitle: 'Vous avez modifié votre rendez-vous chez le dentiste',
            date: 'Il y a 3 jours',
          ),
        ],
      ),
    );
  }
}

class ProgressNotificationTile extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String date;

  const ProgressNotificationTile({
    Key? key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Padding(
        padding: const EdgeInsets.only(top: 6.0), // Add top margin here
        child: Container(
          width: 15.0, // Circle width
          height: 15.0, // Circle height
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
      title: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16.0), // Font size for title
              overflow: TextOverflow.ellipsis, // Handles overflow text
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 14.0), // Font size for subtitle
              overflow: TextOverflow.ellipsis, // Handles overflow text
            ),
          ),
        ],
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 5.0), // Add top margin here
        child: Text(date),
      ),
      isThreeLine: true, // Ensures there’s enough vertical space
    );
  }
}
