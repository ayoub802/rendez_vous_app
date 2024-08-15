import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FicheProTab extends StatefulWidget {
  @override
  _FicheProTabState createState() => _FicheProTabState();
}

class _FicheProTabState extends State<FicheProTab> {
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

  void _openAddEventModal(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _urlController = TextEditingController();
    final TextEditingController _descriptionController =
        TextEditingController();
    FocusNode _prenomFocusNode = FocusNode();
    FocusNode _nomFocusNode = FocusNode();
    FocusNode _rendezVousFocusNode = FocusNode();
    FocusNode _emailFocusNode = FocusNode();
    FocusNode _servicesFocusNode = FocusNode();
    FocusNode _telephoneFocusNode = FocusNode();
    FocusNode _telephonePortableFocusNode = FocusNode();
    FocusNode _Listderou1FocusNode = FocusNode();
    FocusNode _Listderou2FocusNode = FocusNode();
    bool _allDay = false;
    DateTime? _startDate;
    DateTime? _endDate;
    @override
    void initState() {
      super.initState();
      _prenomFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _nomFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _rendezVousFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _emailFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _servicesFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _telephoneFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _telephonePortableFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _Listderou1FocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _Listderou2FocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
    }

    @override
    void dispose() {
      _prenomFocusNode.dispose();
      _nomFocusNode.dispose();
      _rendezVousFocusNode.dispose();
      _emailFocusNode.dispose();
      _servicesFocusNode.dispose();
      _telephoneFocusNode.dispose();
      _telephonePortableFocusNode.dispose();
      _Listderou1FocusNode.dispose();
      _Listderou2FocusNode.dispose();
      super.dispose();
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0), // Set your desired radius here
        ),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
            heightFactor:
                0.75, // Adjust the height factor to your needs (0.75 = 75% of the screen height)
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color here
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25.0),
                ),
              ),
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 16.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 5),
                    Text(
                      'Prise de rendez-vous', // Title text
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 20, // Adjust the font size as needed
                        fontWeight: FontWeight.w500, // Make the text bold
                      ),
                    ),
                    Text(
                      'Vérifiez les informations pré-enregistrées', // Title text
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFF8e8f9d),
                        fontSize: 16, // Adjust the font size as needed
                        fontWeight: FontWeight.w400, // Make the text bold
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      focusNode: _prenomFocusNode,
                      decoration: InputDecoration(
                        labelText: 'Prenom',
                        labelStyle: TextStyle(
                          color: _prenomFocusNode.hasFocus
                              ? Colors.blue // Color when focused
                              : Colors.grey, // Color when not focused
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
                    SizedBox(height: 15),
                    TextField(
                      focusNode: _nomFocusNode,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        labelStyle: TextStyle(
                          color: _nomFocusNode.hasFocus
                              ? Colors.blue // Color when focused
                              : Colors.grey, // Color when not focused
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
                    SizedBox(height: 15),
                    TextField(
                      focusNode: _rendezVousFocusNode,
                      decoration: InputDecoration(
                        labelText: "Rendez-vous sélectionné",
                        labelStyle: TextStyle(
                          color: _rendezVousFocusNode.hasFocus
                              ? Colors.blue // Color when focused
                              : Colors.grey, // Color when not focused
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
                    SizedBox(height: 15),
                    TextField(
                      focusNode: _emailFocusNode,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: _emailFocusNode.hasFocus
                              ? Colors.blue // Color when focused
                              : Colors.grey, // Color when not focused
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
                    SizedBox(height: 15),
                    DropdownButtonFormField<String>(
                      onChanged: (value) {},
                      focusNode: _servicesFocusNode,
                      items: ['Business', 'Personal', 'Medical']
                          .map((String category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Services',
                        labelStyle: TextStyle(
                          color: _servicesFocusNode.hasFocus
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
                    SizedBox(height: 15),
                    TextField(
                      focusNode: _telephoneFocusNode,
                      decoration: InputDecoration(
                        labelText: "Téléphone",
                        labelStyle: TextStyle(
                          color: _telephoneFocusNode.hasFocus
                              ? Colors.blue // Color when focused
                              : Colors.grey, // Color when not focused
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
                    SizedBox(height: 15),
                    TextField(
                      focusNode: _telephonePortableFocusNode,
                      decoration: InputDecoration(
                        labelText: "Téléphone portable",
                        labelStyle: TextStyle(
                          color: _telephonePortableFocusNode.hasFocus
                              ? Colors.blue // Color when focused
                              : Colors.grey, // Color when not focused
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 15, top: 19, bottom: 19),
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
                    SizedBox(height: 15),
                    DropdownButtonFormField<String>(
                      onChanged: (value) {},
                      focusNode: _Listderou1FocusNode,
                      items: ['Business', 'Personal', 'Medical']
                          .map((String category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'List déroulante type 1',
                        labelStyle: TextStyle(
                          color: _Listderou1FocusNode.hasFocus
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
                    SizedBox(height: 15),
                    DropdownButtonFormField<String>(
                      onChanged: (value) {},
                      focusNode: _Listderou2FocusNode,
                      items: ['Business', 'Personal', 'Medical']
                          .map((String category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'List déroulante type 2',
                        labelStyle: TextStyle(
                          color: _Listderou2FocusNode.hasFocus
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Switch(
                          value: true,
                          onChanged: (bool value) {
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        Text('Je souhaite être notifié par sms'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context); // Reset and close
                            },
                            child: Text('confirmer le rendez-vous',
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
                              backgroundColor:
                                  Colors.blue, // background-color: #666CFF;
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8), // border-radius: 8px;
                              ),
                              shadowColor: Color.fromRGBO(
                                  76, 78, 100, 0.2), // Adjust shadow color
                              elevation: 3, // Corresponding to the box-shadow
                            ).copyWith(
                              alignment: Alignment
                                  .center, // align-items: center, justify-content: center
                              tapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Removes additional padding around the button
                              side: MaterialStateProperty.all(BorderSide
                                  .none), // border: 0; border-color: transparent;
                              textStyle: MaterialStateProperty.all(TextStyle(
                                textBaseline: TextBaseline.alphabetic,
                              )),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Logic to add event
                            },
                            child: Text('ANNULER',
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
                              minimumSize: Size(50, 40),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8), // border-radius: 8px;
                                side: BorderSide(
                                  color: Color.fromRGBO(
                                      109, 120, 141, 0.5), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                              textStyle: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text(
                      'Docteur John Doe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: .0),
                    Text(
                      'Chirurgien dentiste',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 4.0),
                    ElevatedButton(
                      onPressed: () => _openAddEventModal(context),
                      child: Text('PRENDRE RENDEZ-VOUS',
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
                        minimumSize: Size(250, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // border-radius: 8px;
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 12.0),
                        textStyle: TextStyle(fontSize: 16),
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
                labelText: 'Adresse',
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
                labelText: 'Telephone',
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
              focusNode: _bioFocusNode,
              maxLines: 5, // Allows multi-line input for the bio
              decoration: InputDecoration(
                labelText: 'Bio',
                alignLabelWithHint:
                    true, // Aligns the label with the start of the input text
                labelStyle: TextStyle(
                  color: _bioFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(
                    left: 15, top: 10, bottom: 10), // Adjust padding as needed
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
              textAlignVertical: TextAlignVertical
                  .top, // Aligns the input text to the start (top-left)
            ),
            SizedBox(height: 15.0),
            TextField(
              focusNode: _moyenFocusNode,
              decoration: InputDecoration(
                labelText: 'Moyen de paiment',
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
                labelText: 'Spécialités',
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
            DropdownButtonFormField<String>(
              focusNode: _list1FocusNode,
              decoration: InputDecoration(
                labelText: 'Liste déroulante type 1',
                labelStyle: TextStyle(
                  color: _list1FocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              value: _selectedOption,
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              focusNode: _list2FocusNode,
              decoration: InputDecoration(
                labelText: 'Liste déroulante type 2',
                labelStyle: TextStyle(
                  color: _list2FocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              value: _selectedOption1,
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption1 = newValue;
                });
              },
            ),
            SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                // Handle appointment scheduling here
              },
              child: Text('retour à la recherche'.toUpperCase(),
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
            SizedBox(height: 25.0),
          ],
        ),
      ),
    );
    // Padding(
  }
}

void _openAddCardModal(BuildContext context) {
  final FocusNode _cardNumberFocusNode = FocusNode();
  final FocusNode _cardHolderFocusNode = FocusNode();
  final FocusNode _expiryDateFocusNode = FocusNode();
  final FocusNode _cvcFocusNode = FocusNode();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (BuildContext context) {
      return FractionallySizedBox(
        heightFactor: 0.75,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            ),
          ),
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 5),
                Text(
                  'Ajouter une carte',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Veuillez remplir les informations',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFF8e8f9d),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                _buildCardWidget(),
                SizedBox(height: 20),
                _buildCardForm(
                  _cardNumberFocusNode,
                  _cardHolderFocusNode,
                  _expiryDateFocusNode,
                  _cvcFocusNode,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Close the modal
                      },
                      child: Text('PAYER'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Close the modal
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: Text('ANNULER'),
                    ),
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _buildCardWidget() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 10,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Image.asset(
        //       'assets/mastercard_logo.png',
        //       width: 40,
        //       height: 40,
        //     ),
        //   ],
        // ),
        Text(
          '5577 0000 5577 9865',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'TOM MCBRIDE',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Valid thru 08/20',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

Widget _buildCardForm(
  FocusNode cardNumberFocusNode,
  FocusNode cardHolderFocusNode,
  FocusNode expiryDateFocusNode,
  FocusNode cvcFocusNode,
) {
  return Column(
    children: [
      TextFormField(
        focusNode: cardNumberFocusNode,
        decoration: InputDecoration(
          labelText: 'Numéro',
          labelStyle: TextStyle(
            color: cardNumberFocusNode.hasFocus ? Colors.blue : Colors.grey,
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
      SizedBox(height: 15),
      TextFormField(
        focusNode: cardHolderFocusNode,
        decoration: InputDecoration(
          labelText: 'Nom sur la carte',
          labelStyle: TextStyle(
            color: cardHolderFocusNode.hasFocus ? Colors.blue : Colors.grey,
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
      SizedBox(height: 15),
      Row(
        children: [
          Expanded(
            child: TextFormField(
              focusNode: expiryDateFocusNode,
              decoration: InputDecoration(
                labelText: 'Expire le',
                labelStyle: TextStyle(
                  color:
                      expiryDateFocusNode.hasFocus ? Colors.blue : Colors.grey,
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
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              focusNode: cvcFocusNode,
              decoration: InputDecoration(
                labelText: 'CVC',
                labelStyle: TextStyle(
                  color: cvcFocusNode.hasFocus ? Colors.blue : Colors.grey,
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
          ),
        ],
      ),
    ],
  );
}