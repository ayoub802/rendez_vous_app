import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  final Map<CalendarFormat, String> customFormatLabels = {
    CalendarFormat.month: 'Mois',
    CalendarFormat.twoWeeks: 'Semaine',
    CalendarFormat.week: 'Jour',
    // If you want to add a list view, you'll need a custom implementation.
  };
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<String, bool> checkboxStates = {
    "Voir Tous": true,
    "Aujourd’hui": true,
    "A venir": true,
    "Business": true,
    "Personnel": false,
    "Médical": false,
  };

  void _handleCheckboxChange(String key, bool? value) {
    setState(() {
      // If "Voir Tous" checkbox is changed, update all checkboxes
      if (key == "Voir Tous") {
        checkboxStates.forEach((k, v) {
          checkboxStates[k] = value!;
        });
      } else {
        // Update the specific checkbox
        checkboxStates[key] = value!;
        // Check if all checkboxes except "Voir Tous" are true
        bool allChecked = checkboxStates.entries
            .where((entry) => entry.key != "Voir Tous")
            .every((entry) => entry.value == true);
        // Update "Voir Tous" based on other checkboxes
        checkboxStates["Voir Tous"] = allChecked;
      }
    });
  }

  void _openAddEventModal(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _urlController = TextEditingController();
    final TextEditingController _descriptionController =
        TextEditingController();
    FocusNode _titleFocusNode = FocusNode();
    FocusNode _calendarFocusNode = FocusNode();
    FocusNode _startDayFocusNode = FocusNode();
    FocusNode _endDayFocusNode = FocusNode();
    FocusNode _eventFocusNode = FocusNode();
    FocusNode _guestFocusNode = FocusNode();
    FocusNode _descriptionFocusNode = FocusNode();
    bool _allDay = false;
    DateTime? _startDate;
    DateTime? _endDate;
    @override
    void initState() {
      super.initState();
      _titleFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _calendarFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _startDayFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _endDayFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _eventFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _guestFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
      _descriptionFocusNode.addListener(() {
        setState(() {}); // Rebuild to reflect focus changes
      });
    }

    @override
    void dispose() {
      _titleFocusNode.dispose();
      _calendarFocusNode.dispose();
      _startDayFocusNode.dispose();
      _endDayFocusNode.dispose();
      _eventFocusNode.dispose();
      _guestFocusNode.dispose();
      _descriptionFocusNode.dispose();
      super.dispose();
    }

    Future<void> _selectDate(BuildContext context, bool isStart) async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: Colors.white,
              colorScheme: ColorScheme.light(primary: Colors.blue),
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
              ),
              dialogBackgroundColor: Colors.white, // Background color

              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white, // Button text color
                    textStyle: TextStyle(color: Colors.white)),
              ),
            ),
            child: child!,
          );
        },
      );
      if (pickedDate != null) {
        setState(() {
          if (isStart) {
            _startDate = pickedDate;
          } else {
            _endDate = pickedDate;
          }
        });
      }
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
        return Container(
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
                  'Add Event'.toUpperCase(), // Title text
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20, // Adjust the font size as needed
                    fontWeight: FontWeight.w500, // Make the text bold
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _titleController,
                  focusNode: _titleFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(
                      color: _titleFocusNode.hasFocus
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
                  value: 'Business',
                  onChanged: (value) {},
                  focusNode: _calendarFocusNode,
                  items: ['Business', 'Personal', 'Medical']
                      .map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Calendar',
                    labelStyle: TextStyle(
                      color: _calendarFocusNode.hasFocus
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
                GestureDetector(
                  onTap: () => _selectDate(context, true),
                  child: AbsorbPointer(
                    child: TextField(
                      focusNode: _startDayFocusNode,
                      decoration: InputDecoration(
                        labelText: _startDate == null
                            ? 'Start Date'
                            : 'Start Date: ${_startDate!.toLocal()}'
                                .split(' ')[0],
                        labelStyle: TextStyle(
                          color: _startDayFocusNode.hasFocus
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
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () => _selectDate(context, false),
                  child: AbsorbPointer(
                    child: TextField(
                      focusNode: _endDayFocusNode,
                      decoration: InputDecoration(
                        labelText: _endDate == null
                            ? 'End Date'
                            : 'End Date: ${_endDate!.toLocal()}'.split(' ')[0],
                        labelStyle: TextStyle(
                          color: _endDayFocusNode.hasFocus
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
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Switch(
                      value: _allDay,
                      onChanged: (bool value) {
                        setState(() {
                          _allDay = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Text('All Day'),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _urlController,
                  focusNode: _eventFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Event URL',
                    labelStyle: TextStyle(
                      color: _eventFocusNode.hasFocus
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
                  focusNode: _guestFocusNode,
                  items: ['Business', 'Personal', 'Medical']
                      .map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Guests',
                    labelStyle: TextStyle(
                      color: _guestFocusNode.hasFocus
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
                TextField(
                  controller: _descriptionController,
                  focusNode: _descriptionFocusNode,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    alignLabelWithHint:
                        true, // Aligns the label with the start of the input text
                    labelStyle: TextStyle(
                      color: _descriptionFocusNode.hasFocus
                          ? Colors.blue // Color when focused
                          : Colors.grey, // Color when not focused
                    ),
                    contentPadding: EdgeInsets.only(
                        left: 15,
                        top: 10,
                        bottom: 10), // Adjust padding as needed
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
                  textAlignVertical: TextAlignVertical.top,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Reset and close
                        },
                        child: Text('ADD',
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
                            borderRadius:
                                BorderRadius.circular(8), // border-radius: 8px;
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
                        child: Text('RESET',
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
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // border-radius: 8px;
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendrier'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // update `_focusedDay` here as well
              });
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            availableCalendarFormats: customFormatLabels,
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.blue, // Change this to your desired color
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Colors
                    .blue, // Customize the color for today's date if needed
                shape: BoxShape.circle,
              ),
              selectedTextStyle:
                  TextStyle(color: Colors.white), // Change text color if needed
            ),
          ),
          SizedBox(height: 8.0),
          // Add event filtering options
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Filtres'.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily:
                      'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                  fontWeight: FontWeight.w500,
                  fontSize: 14, // 0.9375rem converted to pixels
                  letterSpacing: 0.15,
                  color: Color.fromRGBO(76, 78, 100, 0.6), // color: #FFF;
                  height: 1.3,
                )),
          ),
          Expanded(
            child: ListView(
              children: checkboxStates.keys.map((String key) {
                return ListTile(
                  title: Text(key),
                  leading: Checkbox(
                    value: checkboxStates[key],
                    onChanged: (bool? value) {
                      _handleCheckboxChange(key, value);
                    },
                    activeColor: _getColor(key), // Get color based on the title
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddEventModal(context),
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white, // Set the icon color to blue
        ),
      ),
    );
  }

  Color _getColor(String key) {
    switch (key) {
      case 'Aujourd’hui':
        return Color(0xffff4d49);
      case 'A venir':
        return Color(0xff666cff);
      case 'Business':
        return Color(0xfffdb528);
      case 'Personnel':
        return Color(0xff72e128);
      case 'Médical':
        return Color(0xff26c6f9);
      default:
        return Color(0xff6d788d);
    }
  }
}
