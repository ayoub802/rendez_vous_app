import 'package:flutter/material.dart';
import 'package:rendez_vous/widget/CustomDrawer.dart';
import 'package:rendez_vous/widget/RendezVous.dart';
import './widget/NotificationsCard.dart';
import 'package:intl/intl.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DashboardScreen> {
  final _metierFocusNode = FocusNode();
  final _localisationFocusNode = FocusNode();
  final _dateFocusNode = FocusNode();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _metierFocusNode.dispose();
    _localisationFocusNode.dispose();
    _dateFocusNode.dispose();
    _dateController.dispose();
    super.dispose();
  }

  void _showSearchModal(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<String>(
                focusNode: _metierFocusNode,
                decoration: InputDecoration(
                  labelText:
                      AppLocalizations.of(context)?.translate('job_label') ??
                          '',
                  labelStyle: TextStyle(
                    color:
                        _metierFocusNode.hasFocus ? Colors.blue : Colors.grey,
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
                items: ['Dentiste', 'Médecin', 'Infirmier'].map((String value) {
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
                  labelText: AppLocalizations.of(context)
                          ?.translate('location_label') ??
                      '',
                  labelStyle: TextStyle(
                    color: _localisationFocusNode.hasFocus
                        ? Colors.blue
                        : Colors.grey,
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
                items: ['Goma', 'Kinshasa', 'Lubumbashi'].map((String value) {
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
                  labelText:
                      AppLocalizations.of(context)?.translate('date_label') ??
                          '',
                  labelStyle: TextStyle(
                    color: _dateFocusNode.hasFocus ? Colors.blue : Colors.grey,
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
                          colorScheme: ColorScheme.light(
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                            surface: Colors.white,
                          ),
                          dialogBackgroundColor: Colors.green,
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          dividerColor: Colors.transparent,
                        ),
                        child: child != null
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Rechercher',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('dashboard_title') ?? ""),
        backgroundColor: Color(0xFFF7F7F9), // Background color for the AppBar
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              _showSearchModal(context);
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Container(
        color: Color(0xFFF7F7F9), // Background color for the body
        child: ListView(
          children: <Widget>[
            ProgressNotificationsCard(), // Here is your custom notifications card
            AppointmentsCard(), // Here is your custom appointments card
            // You can add more widgets/cards here as needed
          ],
        ),
      ),
    );
  }
}
