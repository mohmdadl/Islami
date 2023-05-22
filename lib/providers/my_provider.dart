import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {

  ThemeMode themeMode = ThemeMode.light;

  void Changetheme(ThemeMode x) {
    themeMode = x;
    notifyListeners();
  }
}
