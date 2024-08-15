import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'inscriptions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                // primary: Colors.white, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              child: Text(
                'Connexion',
                style: TextStyle(
                  color: Colors.blue, // Text color
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InscriptionPage()),
                );
              },
              style: OutlinedButton.styleFrom(
                // primary: Colors.white, // Text color
                side: BorderSide(color: Colors.white), // Border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              child: Text(
                'S\'enregistrer',
                style: TextStyle(
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              // color: Colors.blue,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gérez Facilement\nVos Rendez-Vous',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Economisez votre temps et\nconcentrez-vous sur votre métier',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Métiers',
                            contentPadding: EdgeInsets.only(
                              left: 15,
                              top: 19,
                              bottom: 19,
                              right: 15,
                            ),
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
                          items: ['Dentiste', 'Médecin', 'Infirmier']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                        SizedBox(height: 16),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Localisation',
                            contentPadding: EdgeInsets.only(
                              left: 15,
                              top: 19,
                              bottom: 19,
                              right: 15,
                            ),
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
                          items: ['Goma', 'Kinshasa', 'Lubumbashi']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Date',
                            contentPadding: EdgeInsets.only(
                              left: 15,
                              top: 19,
                              bottom: 19,
                              right: 15,
                            ),
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
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            );
                            if (pickedDate != null) {
                              print(pickedDate);
                            }
                          },
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.blue, // Background color
                            // onPrimary: Colors.white, // Text color
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(50), // Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12), // Button padding
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                'Rechercher',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '123 Health Lane\nCitysville, State 56789\nGoma - RDC',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'RENDEZ-VOUS.SN Mensarum enim voragines et varias voluptatum inlecebras, ne longius progrediar.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Praetermitto illuc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
