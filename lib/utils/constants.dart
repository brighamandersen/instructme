// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/theme.dart';

List<EventModel> ALL_EVENTS = [
  EventModel('Production Design', 11, '10:00 AM'),
  EventModel('Acting', 11, '2:00 PM'),
  EventModel('Cinematography', 11, '5:00 PM'),
  EventModel('Sound', 14, '9:00 AM'),
  EventModel('Stage Design', 24, '11:00 AM'),
  EventModel('Lighting', 27, '9:00 PM'),
];

const lightText = TextStyle(
    color: THEME_SECONDARY_DARKER, fontWeight: FontWeight.w300, fontSize: 14);

const boldText = TextStyle(
    color: THEME_SECONDARY_DARKER, fontWeight: FontWeight.w600, fontSize: 14);
