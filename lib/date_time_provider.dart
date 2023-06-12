import 'package:flutter/material.dart';

class DateTimeProvider extends ChangeNotifier {
  DateTime datetime = DateTime.now();

  upadateTimeDate() {
    datetime = DateTime.now();
    notifyListeners();
  }
}
