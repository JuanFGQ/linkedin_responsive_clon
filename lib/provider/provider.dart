import 'package:flutter/material.dart';

class ConstraintsProv with ChangeNotifier {
  double _constraints = 0;

  double get constraints => _constraints;
  set constraints(double value) {
    _constraints = value;
    notifyListeners();
  }
}
