// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/theme.dart';

List<EventModel> ALL_EVENTS = [
  EventModel('Production Design', 3, '10:00 AM'),
  EventModel('Acting', 3, '2:00 PM'),
  EventModel('Cinematography', 3, '5:00 PM'),
  EventModel('Sound', 5, '9:00 AM'),
];

const lightText = TextStyle(
    color: THEME_SECONDARY_DARKER, fontWeight: FontWeight.w300, fontSize: 14);

const boldText = TextStyle(
    color: THEME_SECONDARY_DARKER, fontWeight: FontWeight.w600, fontSize: 14);
