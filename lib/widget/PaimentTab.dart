import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';

class PaimentTab extends StatefulWidget {
  @override
  _PaimentTabState createState() => _PaimentTabState();
}

class _PaimentTabState extends State<PaimentTab> {
  final List<Map<String, String>> clients = [
    {
      'name': 'Galen Slixby',
      'email': 'gslixby0@abc.net.au',
      'phone': '(479) 232-9151',
      'profession': 'Enterprise',
      'status': 'Inactive'
    },
    {
      'name': 'Halsey Redmore',
      'email': 'hredmore1@imgur.com',
      'phone': '(472) 607-9137',
      'profession': 'Team',
      'status': 'Pending'
    },
    {
      'name': 'Marjory Sicely',
      'email': 'msicely2@who.int',
      'phone': '(321) 264-4599',
      'profession': 'Enterprise',
      'status': 'Active'
    },
    {
      'name': 'Cyrill Risby',
      'email': 'crisby3@wordpress.com',
      'phone': '(923) 690-6806',
      'profession': 'Team',
      'status': 'Inactive'
    },
    {
      'name': 'Maggy Hurran',
      'email': 'mhurran4@yahoo.co.jp',
      'phone': '(669) 914-1078',
      'profession': 'Enterprise',
      'status': 'Pending'
    },
    {
      'name': 'Silvain Halstead',
      'email': 'shalstead5@shinystat.com',
      'phone': '(958) 973-3093',
      'profession': 'Company',
      'status': 'Active'
    },
    {
      'name': 'Breena Gallemore',
      'email': 'bgallemore6@boston.com',
      'phone': '(825) 977-8152',
      'profession': 'Company',
      'status': 'Pending'
    },
    {
      'name': 'Kathryne Liger',
      'email': 'kliger7@vinaora.com',
      'phone': '(187) 440-0934',
      'profession': 'Enterprise',
      'status': 'Pending'
    },
    {
      'name': 'Franz Scotfurth',
      'email': 'fscotfurth8@dailymotion.com',
      'phone': '(978) 146-5443',
      'profession': 'Team',
      'status': 'Pending'
    },
    // {
    //   'name': 'Jillene Bellany',
    //   'email': 'jbellany9@kickstarter.com',
    //   'phone': '(589) 284-6732',
    //   'profession': 'Company',
    //   'status': 'Inactive'
    // },
  ];

  FocusNode _servicesFocusNode = FocusNode();
  FocusNode _metierFocusNode = FocusNode();
  FocusNode _dateFocusNode = FocusNode(); // New FocusNode for bio
  TextEditingController _dateController = TextEditingController();
  bool _allDay = false;
  DateTime? _startDate;
  DateTime? _endDate;
  @override
  void initState() {
    super.initState();
    _servicesFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _metierFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _dateFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
  }

  @override
  void dispose() {
    _servicesFocusNode.dispose();
    _metierFocusNode.dispose();
    _dateFocusNode.dispose();
    super.dispose();
  }

  List<bool> selectedClients = List<bool>.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align items to the start (left)
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        height: 190,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFe5e7eb), width: 1),
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 16),
                            DropdownButtonFormField<String>(
                              onChanged: (value) {},
                              focusNode: _metierFocusNode,
                              items: [
                                'Admin',
                                'Author',
                                'Editor',
                                'Maintainer',
                                'Subscriber',
                              ].map((String category) {
                                return DropdownMenuItem<String>(
                                  value: category,
                                  child: Text(category),
                                );
                              }).toList(),
                              decoration: InputDecoration(
                                labelText:
                                    localizations.translate('profession') ?? "",
                                hintText:
                                    localizations.translate('profession') ?? "",
                                labelStyle: TextStyle(
                                  color: _metierFocusNode.hasFocus
                                      ? Colors.blue // Color when focused
                                      : Colors.grey, // Color when not focused
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 15, top: 19, bottom: 19, right: 15),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: Color(0xFFe5e7eb)),
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
                                labelText:
                                    localizations.translate('date') ?? "",
                                hintText: localizations.translate('date') ?? "",
                                contentPadding: EdgeInsets.only(
                                  left: 15,
                                  top: 19,
                                  bottom: 19,
                                  right: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: Color(0xFFe5e7eb)),
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
                                  builder:
                                      (BuildContext context, Widget? child) {
                                    return Theme(
                                      data: ThemeData.light().copyWith(
                                        // Customize the primary color (used for selected date)
                                        colorScheme: ColorScheme.light(
                                          primary: Colors
                                              .blue, // selected date color
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
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                }
                              },
                            ),
                          ],
                        )),
                    Positioned(
                      left: 20,
                      top: -2,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        color: Colors.white,
                        child: Text(
                          localizations.translate('filters') ?? "",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                // DropdownButtonFormField<String>(
                //   onChanged: (value) {},
                //   focusNode: _metierFocusNode,
                //   items: [
                //     'Admin',
                //     'Author',
                //     'Editor',
                //     'Maintainer',
                //     'Subscriber',
                //   ].map((String category) {
                //     return DropdownMenuItem<String>(
                //       value: category,
                //       child: Text(category),
                //     );
                //   }).toList(),
                //   decoration: InputDecoration(
                //     labelText: 'Métier',
                //     labelStyle: TextStyle(
                //       color: _metierFocusNode.hasFocus
                //           ? Colors.blue // Color when focused
                //           : Colors.grey, // Color when not focused
                //     ),
                //     contentPadding: EdgeInsets.only(
                //         left: 15, top: 19, bottom: 19, right: 15),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12),
                //       borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                //     ),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12),
                //       borderSide: BorderSide(color: Colors.white),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12),
                //       borderSide: BorderSide(color: Colors.blue),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 16),
                // TextFormField(
                //   focusNode: _dateFocusNode,
                //   controller: _dateController,
                //   decoration: InputDecoration(
                //     labelStyle: TextStyle(
                //       color: _dateFocusNode.hasFocus
                //           ? Colors.blue // Color when focused
                //           : Colors.grey, // Color when not focused
                //     ),
                //     labelText: 'Date',
                //     contentPadding: EdgeInsets.only(
                //       left: 15,
                //       top: 19,
                //       bottom: 19,
                //       right: 15,
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12),
                //       borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                //     ),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12),
                //       borderSide: BorderSide(color: Colors.white),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12),
                //       borderSide: BorderSide(color: Colors.blue),
                //     ),
                //   ),
                //   onTap: () async {
                //     DateTime? pickedDate = await showDatePicker(
                //       context: context,
                //       initialDate: DateTime.now(),
                //       firstDate: DateTime(2000),
                //       lastDate: DateTime(2101),
                //       locale: const Locale('fr', ''),
                //       builder: (BuildContext context, Widget? child) {
                //         return Theme(
                //           data: ThemeData.light().copyWith(
                //             // Customize the primary color (used for selected date)
                //             colorScheme: ColorScheme.light(
                //               primary: Colors.blue, // selected date color
                //               onPrimary: Colors
                //                   .white, // text color of the selected date
                //               surface: Colors
                //                   .white, // background color of the date picker
                //             ),
                //             dialogBackgroundColor:
                //                 Colors.green, // background color of the dialog

                //             textButtonTheme: TextButtonThemeData(
                //               style: TextButton.styleFrom(
                //                 backgroundColor: Colors
                //                     .transparent, // remove the footer buttons
                //               ),
                //             ),
                //             // Remove the divider between header and calendar
                //             dividerColor: Colors.transparent,
                //           ),
                //           child: child != null
                //               ? Column(
                //                   mainAxisSize: MainAxisSize.min,
                //                   children: [
                //                     // Display the date picker without the default title
                //                     Flexible(child: child),
                //                   ],
                //                 )
                //               : Container(),
                //         );
                //       },
                //     );
                //     if (pickedDate != null) {
                //       _dateController.text =
                //           DateFormat('yyyy-MM-dd').format(pickedDate);
                //     }
                //   },
                // ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  onChanged: (value) {},
                  focusNode: _servicesFocusNode,
                  items: [
                    'none',
                    'Downloaded',
                    'Draft',
                    'Paid',
                    'Partial Payment',
                    'Past Due',
                    'Sent',
                  ].map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: localizations.translate('action') ?? "",
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
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.maxFinite,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:
                              localizations.translate('search_payment') ?? "",
                          hintStyle: TextStyle(
                            color: Colors.grey, // Color when not focused
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey, // Color when not focused
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 16),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle search action here
                      },
                      child:
                          Text(localizations.translate('request_payment') ?? "",
                              style: TextStyle(
                                fontFamily:
                                    'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                                fontWeight: FontWeight.w500,
                                fontSize: 15, // 0.9375rem converted to pixels
                                letterSpacing: 0.4,
                                color: Color(0xffffffff), // color: #FFF;
                                height: 1,
                              )),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: 20,
                headingRowColor: MaterialStateProperty.all(Color(0xFFf5f5f7)),
                dataRowHeight: 60,
                columns: const [
                  DataColumn(
                    label: HeaderCell(label: 'Référence'),
                  ),
                  DataColumn(
                    label: HeaderCell(label: 'PROFESSIONNEL'),
                  ),
                  DataColumn(
                    label: HeaderCell(label: 'Total'),
                  ),
                  DataColumn(
                    label: HeaderCell(label: 'Date'),
                  ),
                  DataColumn(
                    label: HeaderCell(label: 'Etat'),
                  ),
                  DataColumn(
                    label: HeaderCell(label: 'Actions'),
                  ),
                ],
                rows: List<DataRow>.generate(clients.length, (index) {
                  final client = clients[index];
                  return DataRow(
                    selected: selectedClients[index],
                    onSelectChanged: (bool? selected) {
                      setState(() {
                        selectedClients[index] = selected ?? false;
                      });
                    },
                    color: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.blue[500];
                      }
                      return null;
                    }),
                    cells: [
                      DataCell(Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey[50],
                            child: Text(
                              client['name']![0],
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(client['name']!,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                '@${client['email']!.split('@')[0]}',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      )),
                      DataCell(Container(
                        child: Text(client['email']!),
                      )),
                      DataCell(Text(client['phone']!)),
                      DataCell(Text(client['profession']!)),
                      DataCell(
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: _getStatusColor(client['status']!),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            client['status']!,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      DataCell(
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Active':
        return Colors.green;
      case 'Pending':
        return Colors.orange;
      case 'Inactive':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }
}

class HeaderCell extends StatelessWidget {
  final String label;

  const HeaderCell({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
