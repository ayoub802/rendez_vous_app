import 'package:flutter/material.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';

class AppointmentsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              localizations.translate('tab_my_appointments') ?? "",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20.0, // 1.25rem = 20px
                fontWeight: FontWeight.w500, // Font weight 500
                letterSpacing: 0.15, // 0.15px letter spacing
                fontFamily: 'Inter', // Use Inter if available
                color: Color(0xff636578), // rgba(76, 78, 100, 0.87)
              ),
            ),
          ),
          AppointmentTile(
            title: 'Avocat',
            date: 'Aujourd’hui',
            time: '14:00 - 15:00',
            type: 'Business',
            typeColor: Colors.red,
          ),
          AppointmentTile(
            title: 'Médecin',
            date: '20 Juil',
            time: '10:00 - 10:30',
            type: 'Médical',
            typeColor: Colors.orange,
          ),
          AppointmentTile(
            title: 'Dentiste',
            date: '20 Juil',
            time: '12:30 - 13:00',
            type: 'Médical',
            typeColor: Colors.blue,
          ),
          AppointmentTile(
            title: 'Notaire',
            date: '24 Juil',
            time: '10:00 - 12:00',
            type: 'Business',
            typeColor: Colors.red,
          ),
          AppointmentTile(
            title: 'Cardiologue',
            date: '27 Juil',
            time: '10:00 - 10:30',
            type: 'Médical',
            typeColor: Colors.green,
          ),
          AppointmentTile(
            title: 'Avocat',
            date: '31 Juil',
            time: '16:00 - 17:30',
            type: 'Personnel',
            typeColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class AppointmentTile extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String type;
  final Color typeColor;

  const AppointmentTile({
    Key? key,
    required this.title,
    required this.date,
    required this.time,
    required this.type,
    required this.typeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[300],
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle:
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Icon(Icons.calendar_today, size: 16.0, color: Colors.grey),
        SizedBox(width: 5.0),
        Text('$date | $time'),
      ]),
      trailing: Row(
        mainAxisSize: MainAxisSize
            .min, // Ensure the Row only takes up as much space as needed
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: typeColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              type,
              style: TextStyle(color: typeColor, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
              width:
                  4.0), // Add spacing between the Container and the PopupMenuButton
          PopupMenuButton<String>(
            color: Colors.white,
            elevation: 1,
            onSelected: (String value) {
              // Handle the selected action here
              switch (value) {
                case 'add':
                  // Add action
                  break;
                case 'edit':
                  // Edit action
                  break;
                case 'delete':
                  // Delete action
                  break;
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'add',
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text('Add'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'edit',
                child: Row(
                  children: <Widget>[
                    Icon(Icons.edit, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text('Edit'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'delete',
                child: Row(
                  children: <Widget>[
                    Icon(Icons.delete, color: Colors.red),
                    SizedBox(width: 8.0),
                    Text('Delete'),
                  ],
                ),
              ),
            ],
            child: Icon(Icons.more_vert,
                color: Colors.black), // Vertical dots icon
          ),
        ],
      ),
    );
  }
}
