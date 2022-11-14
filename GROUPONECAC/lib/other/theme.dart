import 'package:flutter/material.dart';

BoxDecoration darkGradient() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blueGrey.shade800,
            Colors.brown.shade700,
      ]));
}

class MyTheme with ChangeNotifier {
  static bool _isDark = true;
  Color textColor = Colors.brown;
  bool isSwitched = false;
  Color barColor = Color(0xFF263238); // blueGrey.shade900

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  Color currentColor() {
    return textColor;
  }

  void switchTheme() {
    _isDark = !_isDark;
    if (!_isDark) {
      textColor = Colors.black;
    } else {
      textColor = Colors.brown;
    }
    notifyListeners();
  }
}
