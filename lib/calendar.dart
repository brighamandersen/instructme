import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/constants.dart';
import 'package:instructme/utils/helpers.dart';
import 'package:instructme/utils/theme.dart';

class NewCalendarPage extends StatefulWidget {
  const NewCalendarPage({Key? key}) : super(key: key);

  @override
  _NewCalendarPageState createState() => _NewCalendarPageState();
}

class _NewCalendarPageState extends State<NewCalendarPage> {
  DateTime _activeDate = DateTime.now(); // Today selected at first

  void onDateSelected(DateTime? date) {
    setState(() {
      _activeDate = date!;
    });
  }

  List<Widget> getEventColumns(DateTime date) {
    List<EventModel> events = getEventsOnDate(date);
    if (events.isEmpty) {
      return [
        Column(
            children: const [Text('No events on this day', style: lightText)])
      ];
    }

    List<Widget> eventCols = <Widget>[];
    for (var event in events) {
      eventCols.add(Column(children: [
        Text(
          dateAsHoursAndMin(event.datetime),
          style: lightText,
        ),
        Text(event.name, style: boldText),
      ]));
    }

    return eventCols;
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime firstOfMonth = DateTime(now.year, now.month, 1);
    DateTime oneYearLater = DateTime(now.year + 1, now.month + 1, 0);

    return (Column(children: [
      CalendarTimeline(
        initialDate: _activeDate,
        firstDate: firstOfMonth,
        lastDate: oneYearLater,
        onDateSelected: onDateSelected,
      ),
      Container(
          margin: const EdgeInsets.all(10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: getEventColumns(_activeDate))),
    ]));
  }
}
