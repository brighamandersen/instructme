import 'package:flutter/material.dart';
import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/helpers.dart';
import 'package:instructme/utils/theme.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow(
      {Key? key,
      required this.weekStart,
      required this.weekEnd,
      required this.date})
      : super(key: key);

  final num weekStart;
  final num weekEnd;
  final num date;

  bool isVisible() {
    return weekStart <= date && date <= weekEnd;
  }

  List<Widget> getEventColumns() {
    List<EventModel> events = getEventsOnDate(date);
    if (events.isEmpty) {
      return [
        Column(children: const [Text('No events on this day')])
      ];
    }

    List<Widget> eventCols = <Widget>[];
    for (var event in events) {
      eventCols.add(Column(children: [
        Text(
          event.time,
          style: const TextStyle(
              color: THEME_SECONDARY_DARKER,
              fontWeight: FontWeight.w300,
              fontSize: 14),
        ),
        Text(event.name,
            style: const TextStyle(
                color: THEME_SECONDARY_DARKER,
                fontWeight: FontWeight.w600,
                fontSize: 14)),
      ]));
    }

    return eventCols;

    // return Column(children: [
    //   Text(
    //     '10:00 AM',
    //     style: TextStyle(
    //         color: THEME_SECONDARY_DARKER,
    //         fontWeight: FontWeight.w300,
    //         fontSize: 14),
    //   ),
    //   Text('Prod. Design',
    //       style: TextStyle(
    //           color: THEME_SECONDARY_DARKER,
    //           fontWeight: FontWeight.w600,
    //           fontSize: 14)),
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    if (!isVisible()) return const SizedBox.shrink();

    return Container(
        color: THEME_NAVBAR_SURFACE,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text('March ' + date.toString(),
                            style: const TextStyle(
                                fontSize: 10, color: THEME_SECONDARY_DARKER)))
                  ]),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: getEventColumns()))
                ])));
  }
}

class CalendarDay extends StatelessWidget {
  const CalendarDay({
    Key? key,
    required this.weekday,
    required this.date,
    required this.onTap,
    this.active = false,
  }) : super(key: key);

  final String weekday;
  final int date;
  final VoidCallback onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: active
                ? const BoxDecoration(
                    borderRadius: BorderRadius.all(BORDER_RADIUS),
                    color: THEME_PRIMARY,
                  )
                : null,
            margin: const EdgeInsets.all(2.0),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text(weekday.toUpperCase(),
                      style: TextStyle(
                          color: active
                              ? THEME_NAVBAR_SURFACE
                              : THEME_SECONDARY_DARKEST)),
                  Text(
                    date.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: active
                            ? THEME_NAVBAR_SURFACE
                            : THEME_SECONDARY_DARKEST),
                  )
                ]))));
  }
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int _activeDate = 0; // None selected at first

  void onDayTap(date) {
    setState(() {
      _activeDate = date;
    });
  }

  bool isDateActive(date) {
    return date == _activeDate;
  }

  bool activeDateIsWithinWeek(start, end) {
    return start <= _activeDate && _activeDate <= end;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: THEME_PRIMARY_VERY_LIGHT,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalendarDay(
                  weekday: 'mon',
                  date: 2,
                  active: isDateActive(2),
                  onTap: () => onDayTap(2)),
              CalendarDay(
                  weekday: 'tue',
                  date: 3,
                  active: isDateActive(3),
                  onTap: () => onDayTap(3)),
              CalendarDay(
                  weekday: 'wed',
                  date: 4,
                  active: isDateActive(4),
                  onTap: () => onDayTap(4)),
              CalendarDay(
                  weekday: 'thu',
                  date: 5,
                  active: isDateActive(5),
                  onTap: () => onDayTap(5)),
              CalendarDay(
                  weekday: 'fri',
                  date: 6,
                  active: isDateActive(6),
                  onTap: () => onDayTap(6)),
              CalendarDay(
                  weekday: 'sat',
                  date: 7,
                  active: isDateActive(7),
                  onTap: () => onDayTap(7)),
              CalendarDay(
                  weekday: 'sun',
                  date: 8,
                  active: isDateActive(8),
                  onTap: () => onDayTap(8)),
            ]),
            DetailsRow(weekStart: 2, weekEnd: 8, date: _activeDate),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalendarDay(
                  weekday: 'mon',
                  date: 9,
                  active: isDateActive(9),
                  onTap: () => onDayTap(9)),
              CalendarDay(
                  weekday: 'tue',
                  date: 10,
                  active: isDateActive(10),
                  onTap: () => onDayTap(10)),
              CalendarDay(
                  weekday: 'wed',
                  date: 11,
                  active: isDateActive(11),
                  onTap: () => onDayTap(11)),
              CalendarDay(
                  weekday: 'thu',
                  date: 12,
                  active: isDateActive(12),
                  onTap: () => onDayTap(12)),
              CalendarDay(
                  weekday: 'fri',
                  date: 13,
                  active: isDateActive(13),
                  onTap: () => onDayTap(13)),
              CalendarDay(
                  weekday: 'sat',
                  date: 14,
                  active: isDateActive(14),
                  onTap: () => onDayTap(14)),
              CalendarDay(
                  weekday: 'sun',
                  date: 15,
                  active: isDateActive(15),
                  onTap: () => onDayTap(15)),
            ]),
            DetailsRow(weekStart: 9, weekEnd: 15, date: _activeDate),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalendarDay(
                  weekday: 'mon',
                  date: 16,
                  active: isDateActive(16),
                  onTap: () => onDayTap(16)),
              CalendarDay(
                  weekday: 'tue',
                  date: 17,
                  active: isDateActive(17),
                  onTap: () => onDayTap(17)),
              CalendarDay(
                  weekday: 'wed',
                  date: 18,
                  active: isDateActive(18),
                  onTap: () => onDayTap(18)),
              CalendarDay(
                  weekday: 'thu',
                  date: 19,
                  active: isDateActive(19),
                  onTap: () => onDayTap(19)),
              CalendarDay(
                  weekday: 'fri',
                  date: 20,
                  active: isDateActive(20),
                  onTap: () => onDayTap(20)),
              CalendarDay(
                  weekday: 'sat',
                  date: 21,
                  active: isDateActive(21),
                  onTap: () => onDayTap(21)),
              CalendarDay(
                  weekday: 'sun',
                  date: 22,
                  active: isDateActive(22),
                  onTap: () => onDayTap(22)),
            ]),
            DetailsRow(weekStart: 16, weekEnd: 22, date: _activeDate),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalendarDay(
                  weekday: 'mon',
                  date: 23,
                  active: isDateActive(23),
                  onTap: () => onDayTap(23)),
              CalendarDay(
                  weekday: 'tue',
                  date: 24,
                  active: isDateActive(24),
                  onTap: () => onDayTap(24)),
              CalendarDay(
                  weekday: 'wed',
                  date: 25,
                  active: isDateActive(25),
                  onTap: () => onDayTap(25)),
              CalendarDay(
                  weekday: 'thu',
                  date: 26,
                  active: isDateActive(26),
                  onTap: () => onDayTap(26)),
              CalendarDay(
                  weekday: 'fri',
                  date: 27,
                  active: isDateActive(27),
                  onTap: () => onDayTap(27)),
              CalendarDay(
                  weekday: 'sat',
                  date: 28,
                  active: isDateActive(28),
                  onTap: () => onDayTap(28)),
              CalendarDay(
                  weekday: 'sun',
                  date: 29,
                  active: isDateActive(29),
                  onTap: () => onDayTap(29)),
            ]),
            DetailsRow(weekStart: 23, weekEnd: 29, date: _activeDate),
          ],
        ));
  }
}
