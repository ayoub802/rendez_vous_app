import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationTab extends StatefulWidget {
  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  bool sendConfirmationEmailOnChanged = true;
  bool sendConfirmationEmailOnDeleted = true;
  bool sendEmailToValidateAppointment = true;
  bool receivePartnerCommunications = true;
  bool informAboutNews = true;
  bool informAboutNearbyProfessionals = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.analytics_rounded,
                size: 30,
                color: Color(0xff636578),
              ),
              SizedBox(width: 10.0),
              Text(
                'Activité',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff636578)),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          SwitchListTile(
            title: Text(
              'Envoyer un email de confirmation quand un rendez-vous est modifié',
              style: TextStyle(
                fontFamily:
                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                fontSize: 16,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.4,
              ),
            ),
            value: sendConfirmationEmailOnChanged,
            onChanged: (bool value) {
              setState(() {
                sendConfirmationEmailOnChanged = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          SwitchListTile(
            title: Text(
              'Envoyer un email de confirmation quand un rendez-vous est supprimé',
              style: TextStyle(
                fontFamily:
                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                fontSize: 16,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.4,
              ),
            ),
            value: sendConfirmationEmailOnDeleted,
            onChanged: (bool value) {
              setState(() {
                sendConfirmationEmailOnDeleted = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          SwitchListTile(
            title: Text(
              'Envoyer un email pour valider un rendez-vous',
              style: TextStyle(
                fontFamily:
                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                fontSize: 16,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.4,
              ),
            ),
            value: sendEmailToValidateAppointment,
            onChanged: (bool value) {
              setState(() {
                sendEmailToValidateAppointment = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          Divider(
            color: Color(0xFFe9e9ec), // Color of the divider
            thickness: 1.0, // Thickness of the divider
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.mail_outline,
                size: 30,
                color: Color(0xff636578),
              ),
              SizedBox(width: 10.0),
              Text(
                'Application',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff636578)),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          SwitchListTile(
            title: Text(
              'M\'envoyer des communications des partenaires',
              style: TextStyle(
                fontFamily:
                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                fontSize: 16,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.4,
              ),
            ),
            value: receivePartnerCommunications,
            onChanged: (bool value) {
              setState(() {
                receivePartnerCommunications = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          SwitchListTile(
            title: Text(
              'M\'informer des nouveautés',
              style: TextStyle(
                fontFamily:
                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                fontSize: 16,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.4,
              ),
            ),
            value: informAboutNews,
            onChanged: (bool value) {
              setState(() {
                informAboutNews = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          SwitchListTile(
            title: Text(
              'M\'informer des professionnels proches de moi',
              style: TextStyle(
                fontFamily:
                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                fontSize: 16,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.4,
              ),
            ),
            value: informAboutNearbyProfessionals,
            onChanged: (bool value) {
              setState(() {
                informAboutNearbyProfessionals = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle appointment scheduling here
            },
            child: Text('sauvegarder'.toUpperCase(),
                style: TextStyle(
                  fontFamily:
                      'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                  fontWeight: FontWeight.w500,
                  fontSize: 15, // 0.9375rem converted to pixels
                  letterSpacing: 0.4,
                  color: Colors.white, // color: #FFF;
                  height: 1,
                )),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // border-radius: 8px;
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              textStyle: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 15.0),
          ElevatedButton(
            onPressed: () {
              // Handle appointment scheduling here
            },
            child: Text('annuler'.toUpperCase(),
                style: TextStyle(
                  fontFamily:
                      'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                  fontWeight: FontWeight.w500,
                  fontSize: 15, // 0.9375rem converted to pixels
                  letterSpacing: 0.4,
                  color: Color(0xff6D788D), // color: #FFF;
                  height: 1,
                )),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // border-radius: 8px;
                side: BorderSide(
                  color: Color.fromRGBO(109, 120, 141, 0.5), // Border color
                  width: 1.0, // Border width
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              textStyle: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}
