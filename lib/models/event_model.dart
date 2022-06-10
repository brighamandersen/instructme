class OldEventModel {
  String name;
  // For now a hard-coded date num and time string, will probably have to be a timestamp later
  num date;
  String time;

  OldEventModel(this.name, this.date, this.time);
}

class EventModel {
  String name;
  DateTime datetime;

  EventModel(this.name, this.datetime);
}
