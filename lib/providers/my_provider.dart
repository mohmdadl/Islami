import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {

  ThemeMode themeMode = ThemeMode.light;
  String languae="en";

  void Changetheme(ThemeMode x) {
    themeMode = x;
    notifyListeners();
  }
  void ChangeLanguage(String language) {
    languae = language;
    notifyListeners();
  }
}
