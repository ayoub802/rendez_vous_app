import 'package:flutter/material.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';
import 'package:rendez_vous/widget/DoctorCard.dart';

class SearchDoctorScreen extends StatelessWidget {
  final FocusNode _metierFocusNode = FocusNode();
  final FocusNode _localisationFocusNode = FocusNode();
  final FocusNode _disponibiliteFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('search_doctor_title') ?? ""),
        backgroundColor: Color(0xFFF7F7F9), // Background color for the AppBar
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color(0xFFF7F7F9), // Set the background color
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Métier Dropdown
                  Text(
                    localizations.translate('filters') ?? "",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20.0, // 1.25rem = 20px
                      fontWeight: FontWeight.w500, // Font weight 500
                      letterSpacing: 0.15, // 0.15px letter spacing
                      fontFamily: 'Inter', // Use Inter if available
                      color: Color(0xff636578), // rgba(76, 78, 100, 0.87)
                    ),
                  ),
                  SizedBox(height: 8.0),
                  DropdownButtonFormField<String>(
                    onChanged: (value) {},
                    focusNode: _metierFocusNode,
                    items: [
                      DropdownMenuItem(
                          value: 'Dentist', child: Text('Dentist')),
                      // Add more items as needed
                    ],
                    decoration: InputDecoration(
                      labelText: localizations.translate('job_label') ?? "",
                      labelStyle: TextStyle(
                        color: _metierFocusNode.hasFocus
                            ? Colors.blue // Color when focused
                            : Colors.grey, // Color when not focused
                      ),
                      contentPadding: EdgeInsets.only(
                          left: 15, top: 19, bottom: 19, right: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),

                  // Localisation Dropdown
                  DropdownButtonFormField<String>(
                    onChanged: (value) {},
                    focusNode: _localisationFocusNode,
                    items: [
                      DropdownMenuItem(
                          value: 'Location1', child: Text('Location1')),
                      // Add more items as needed
                    ],
                    decoration: InputDecoration(
                      labelText:
                          localizations.translate('location_label') ?? "",
                      labelStyle: TextStyle(
                        color: _localisationFocusNode.hasFocus
                            ? Colors.blue // Color when focused
                            : Colors.grey, // Color when not focused
                      ),
                      contentPadding: EdgeInsets.only(
                          left: 15, top: 19, bottom: 19, right: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),

                  // Disponibilité Dropdown
                  DropdownButtonFormField<String>(
                    onChanged: (value) {},
                    focusNode: _disponibiliteFocusNode,
                    items: [
                      DropdownMenuItem(value: 'Today', child: Text('Today')),
                      // Add more items as needed
                    ],
                    decoration: InputDecoration(
                      labelText: localizations.translate('availability') ?? "",
                      labelStyle: TextStyle(
                        color: _disponibiliteFocusNode.hasFocus
                            ? Colors.blue // Color when focused
                            : Colors.grey, // Color when not focused
                      ),
                      contentPadding: EdgeInsets.only(
                          left: 15, top: 19, bottom: 19, right: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DoctorCard(
              name: 'Dr Laurent',
              specialty: 'Dentiste',
              availability: 'Disponible aujourd\'hui',
              availabilityColor: Colors.green,
              address: '127 Boulevard de la liberté, Goma',
              imagePath: 'assets/LandingPage/avatar01.png',
            ),
            // Expanded(
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     children: <Widget>[
            //       DoctorCard(
            //         name: 'Dr Laurent',
            //         specialty: 'Dentiste',
            //         availability: 'Disponible aujourd\'hui',
            //         availabilityColor: Colors.green,
            //         address: '127 Boulevard de la liberté, Goma',
            //         imagePath: 'assets/LandingPage/avatar01.png',
            //       ),
            //       DoctorCard(
            //         name: 'Dr Morie',
            //         specialty: 'Dentiste',
            //         availability: 'Disponible demain',
            //         availabilityColor: Colors.red,
            //         address: '127 Boulevard de la liberté, Goma',
            //         imagePath: 'assets/LandingPage/avatar02.png',
            //       ),
            //       DoctorCard(
            //         name: 'Dr Morie',
            //         specialty: 'Dentiste',
            //         availability: 'Disponible demain',
            //         availabilityColor: Colors.red,
            //         address: '127 Boulevard de la liberté, Goma',
            //         imagePath: 'assets/LandingPage/avatar03.png',
            //       ),
            //       // Add more DoctorCard widgets as needed
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
