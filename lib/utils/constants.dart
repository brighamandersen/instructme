// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:instructme/models/event_model.dart';
import 'package:instructme/utils/theme.dart';

List<OldEventModel> ALL_OLD_CAL_EVENTS = [
  OldEventModel('Production Design', 11, '10:00 AM'),
  OldEventModel('Acting', 11, '2:00 PM'),
  OldEventModel('Cinematography', 11, '5:00 PM'),
  OldEventModel('Sound', 14, '9:00 AM'),
  OldEventModel('Stage Design', 24, '11:00 AM'),
  OldEventModel('Lighting', 27, '9:00 PM'),
];

List<EventModel> ALL_EVENTS = [
  EventModel('Production Design', DateTime(2022, 6, 11, 4)),
  EventModel('Acting', DateTime(2022, 6, 11, 10)),
  EventModel('Cinematography', DateTime(2022, 6, 11, 17)),
  EventModel('Cinematography', DateTime(2022, 6, 11, 18)),
  EventModel('Sound', DateTime(2022, 6, 12, 4)),
  EventModel('Stage Design', DateTime(2022, 6, 12, 14)),
  EventModel('Lighting', DateTime(2022, 6, 27, 23)),
];

const lightText = TextStyle(
  color: THEME_SECONDARY_DARKER,
  fontWeight: FontWeight.w300,
  fontSize: 14,
);

const boldText = TextStyle(
    color: THEME_SECONDARY_DARKER, fontWeight: FontWeight.w600, fontSize: 14);
