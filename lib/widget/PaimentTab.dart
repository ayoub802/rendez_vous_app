import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  }

  @override
  void dispose() {
    _servicesFocusNode.dispose();
    _metierFocusNode.dispose();
    super.dispose();
  }

  List<bool> selectedClients = List<bool>.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align items to the start (left)
              children: [
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
                    labelText: 'Métier',
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
                SizedBox(height: 10),
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
                    labelText: 'Action',
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
                          hintText: 'Chercher un paiement',
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
                      child: Text("demander un paiement".toUpperCase(),
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
          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columnSpacing: 20,
                    headingRowColor:
                        MaterialStateProperty.all(Color(0xFFf5f5f7)),
                    dataRowHeight: 60,
                    columns: const [
                      DataColumn(
                        label: HeaderCell(label: 'Client'),
                      ),
                      DataColumn(
                        label: HeaderCell(label: 'Email'),
                      ),
                      DataColumn(
                        label: HeaderCell(label: 'Telephone'),
                      ),
                      DataColumn(
                        label: HeaderCell(label: 'Profession'),
                      ),
                      DataColumn(
                        label: HeaderCell(label: 'Status'),
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
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
                )),
          ),
        ],
      ),
    );
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
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
