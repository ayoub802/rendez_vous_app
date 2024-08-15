import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompteTab extends StatefulWidget {
  @override
  _CompteTabState createState() => _CompteTabState();
}

class _CompteTabState extends State<CompteTab> {
  FocusNode _adressFocusNode = FocusNode();
  FocusNode _telephoneFocusNode = FocusNode();
  FocusNode _bioFocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _moyenFocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _specialieFocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _list1FocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _list2FocusNode = FocusNode(); // New FocusNode for bio
  String? _selectedOption; // To hold the selected value from dropdown
  String? _selectedOption1; // To hold the selected value from dropdown

  @override
  void initState() {
    super.initState();
    _adressFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _telephoneFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _bioFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _moyenFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _specialieFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _list1FocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _list2FocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
  }

  @override
  void dispose() {
    _adressFocusNode.dispose();
    _telephoneFocusNode.dispose();
    _bioFocusNode.dispose();
    _moyenFocusNode.dispose();
    _specialieFocusNode.dispose();
    _list1FocusNode.dispose();
    _list2FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  child: Icon(Icons.person, size: 50),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle appointment scheduling here
                      },
                      child: Text('charger une photo'.toUpperCase(),
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
                        minimumSize: Size(250, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // border-radius: 8px;
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 10.0),
                        textStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 2.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle appointment scheduling here
                      },
                      child: Text('supprimer'.toUpperCase(),
                          style: TextStyle(
                            fontFamily:
                                'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                            fontWeight: FontWeight.w500,
                            fontSize: 15, // 0.9375rem converted to pixels
                            letterSpacing: 0.4,
                            color: Colors.red, // color: #FFF;
                            height: 1,
                          )),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 30),
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12), // border-radius: 8px;
                          side: BorderSide(
                            color: Colors.red, // Border color
                            width: 1.0, // Border width
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 10.0),
                        textStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      'Format autorisé JPG, GIF ou PNG.\nTaille max de 800K',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(76, 78, 100, 0.6),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0), // Space between the button and divider
            Divider(
              color: Color(0xFFe9e9ec), // Color of the divider
              thickness: 1.0, // Thickness of the divider
            ),
            SizedBox(height: 25.0),
            TextField(
              focusNode: _adressFocusNode,
              decoration: InputDecoration(
                labelText: 'Utilisateur',
                labelStyle: TextStyle(
                  color: _adressFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
            SizedBox(height: 15.0),
            TextField(
              focusNode: _telephoneFocusNode,
              decoration: InputDecoration(
                labelText: 'Nom',
                labelStyle: TextStyle(
                  color: _telephoneFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
            SizedBox(height: 15.0),
            TextField(
              focusNode: _moyenFocusNode,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: _moyenFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
            SizedBox(height: 15.0),
            TextField(
              focusNode: _specialieFocusNode,
              decoration: InputDecoration(
                labelText: 'Prénom',
                labelStyle: TextStyle(
                  color: _specialieFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
            SizedBox(height: 15.0),
            TextField(
              focusNode: _specialieFocusNode,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                labelStyle: TextStyle(
                  color: _specialieFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
            SizedBox(height: 15.0),
            TextField(
              focusNode: _specialieFocusNode,
              decoration: InputDecoration(
                labelText: 'Téléphone',
                labelStyle: TextStyle(
                  color: _specialieFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
            SizedBox(height: 25.0),
            Card(
              elevation: 0,
              color: Color(0xFFfff6e5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.star, size: 60, color: Colors.red),
                      title: Text(
                          'Votre email n\'est pas confirmé. Vérifiez votre boîte email.',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFDB528))),
                      // subtitle: Text('Vérifiez votre boîte email.',
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.bold,
                      //         color: Color(0xffFDB528))),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        TextButton(
                          child: Text('Envoyé à Nouveau La Confirmation',
                              style: TextStyle(color: Color(0xffFDB528))),
                          onPressed: () {
                            // Insert your resend confirmation logic here
                            print('Resend email clicked');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                // Handle appointment scheduling here
              },
              child: Text('modifier'.toUpperCase(),
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
      ),
    );
    // Padding(
  }
}
