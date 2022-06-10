import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/constants.dart';
import 'package:intl/intl.dart';

List<OldEventModel> getOldCalEventsOnDate(num date) {
  return ALL_OLD_CAL_EVENTS.where((e) => e.date == date).toList();
}

List<EventModel> getEventsOnDate(DateTime date) {
  return ALL_EVENTS.where((e) => isSameDate(e.datetime, date)).toList();
}

bool isSameDate(DateTime first, DateTime second) {
  return first.year == second.year &&
      first.month == second.month &&
      first.day == second.day;
}

String dateAsHoursAndMin(DateTime date) {
  DateFormat formatter = DateFormat('h:mm a');
  return formatter.format(date);
}
