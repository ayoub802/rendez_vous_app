class Event {
  String title;
  String calendar;
  DateTime startDate;
  DateTime endDate;
  bool allDay;
  String eventURL;
  List<String> guests;
  String description;

  Event({
    this.title = '',
    this.calendar = 'Business',
    required this.startDate, // Make startDate required
    required this.endDate, // Make endDate required
    this.allDay = false,
    this.eventURL = '',
    this.guests = const [],
    this.description = '',
  });
}
