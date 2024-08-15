import 'package:flutter/material.dart';

class AppointmentsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          // ListTile(
          //   title: Text('Mes rendez-vous',
          //       style: TextStyle(fontWeight: FontWeight.bold)),
          // ),
          // Divider(),
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
      subtitle: Text('$date | $time'),
      trailing: Container(
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
    );
  }
}
