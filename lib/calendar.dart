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
      return [const Text('No events on this day', style: lightText)];
    }

    List<Widget> eventCols = <Widget>[];
    for (var event in events) {
      if (eventCols.isNotEmpty) {
        // Don't add divider at very beginning
        eventCols.add(
          const SizedBox(
              height: 30,
              child: VerticalDivider(
                color: THEME_VARIANT_LIGHT,
                thickness: 2,
              )),
        );
      }
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
      Container(
        color: THEME_PRIMARY_VERY_LIGHT,
        child: CalendarTimeline(
          initialDate: _activeDate,
          firstDate: firstOfMonth,
          lastDate: oneYearLater,
          onDateSelected: onDateSelected,
          monthColor: THEME_SECONDARY_DARKEST,
          dayColor: THEME_SECONDARY_DARKER,
          dotsColor: THEME_PRIMARY_VERY_LIGHT,
          activeBackgroundDayColor: THEME_PRIMARY,
          selectableDayPredicate: (date) =>
              isSameDate(now, date) || getEventsOnDate(date).isNotEmpty,
        ),
      ),
      SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(children: getEventColumns(_activeDate)))))
    ]));
  }
}
