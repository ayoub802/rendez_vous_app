import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'inscriptions.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FocusNode _metierFocusNode = FocusNode();
  FocusNode _localisationFocusNode = FocusNode();
  FocusNode _dateFocusNode = FocusNode(); // New FocusNode for bio
  TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _metierFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _localisationFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _dateFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
  }

  @override
  void dispose() {
    _metierFocusNode.dispose();
    _localisationFocusNode.dispose();
    _dateFocusNode.dispose();
    _dateController.dispose();
    super.dispose();
  }

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
                          focusNode: _metierFocusNode,
                          decoration: InputDecoration(
                            labelText: 'Métiers',
                            labelStyle: TextStyle(
                              color: _metierFocusNode.hasFocus
                                  ? Colors.blue // Color when focused
                                  : Colors.grey, // Color when not focused
                            ),
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
                          focusNode: _localisationFocusNode,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: _localisationFocusNode.hasFocus
                                  ? Colors.blue // Color when focused
                                  : Colors.grey, // Color when not focused
                            ),
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
                          focusNode: _dateFocusNode,
                          controller: _dateController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: _dateFocusNode.hasFocus
                                  ? Colors.blue // Color when focused
                                  : Colors.grey, // Color when not focused
                            ),
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
                              locale: const Locale('fr', ''),
                              builder: (BuildContext context, Widget? child) {
                                return Theme(
                                  data: ThemeData.light().copyWith(
                                    // Customize the primary color (used for selected date)
                                    colorScheme: ColorScheme.light(
                                      primary:
                                          Colors.blue, // selected date color
                                      onPrimary: Colors
                                          .white, // text color of the selected date
                                      surface: Colors
                                          .white, // background color of the date picker
                                    ),
                                    dialogBackgroundColor: Colors
                                        .green, // background color of the dialog

                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors
                                            .transparent, // remove the footer buttons
                                      ),
                                    ),
                                    // Remove the divider between header and calendar
                                    dividerColor: Colors.transparent,
                                  ),
                                  child: child != null
                                      ? Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            // Display the date picker without the default title
                                            Flexible(child: child),
                                          ],
                                        )
                                      : Container(),
                                );
                              },
                            );
                            if (pickedDate != null) {
                              _dateController.text =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
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
