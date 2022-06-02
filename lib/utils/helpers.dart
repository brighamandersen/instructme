import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/constants.dart';

List<EventModel> getEventsOnDate(num date) {
  return ALL_EVENTS.where((e) => e.date == date).toList();
}
