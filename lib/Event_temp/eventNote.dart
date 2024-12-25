import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:nu_noti_loginpart_pre2/Event_temp/event.dart';

class EventNotifier with ChangeNotifier {
  List<Event> _eventList = [];
  Event _currentEvent;

  UnmodifiableListView<Event> get eventList => UnmodifiableListView(_eventList);

  Event get currentEvent => _currentEvent;

  set eventList(List<Event> eventList) {
    _eventList = eventList;
    notifyListeners();
  }

  set currentEvent(Event event) {
    _currentEvent = event;
    notifyListeners();
  }
}
